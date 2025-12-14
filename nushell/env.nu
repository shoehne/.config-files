let ripgrep_dir = ($nu.config-path 
    | path dirname
    | path join ".." "nvim" "ripgrep" "target" "release"
    | path expand)

if not ($ripgrep_dir | path exists) {
    print "Warning: It seems that ripgrep is not installed yet. Please check again and build via 'cargo --release' if necessary."
} else {
    $env.PATH = ($env.PATH | prepend $ripgrep_dir)
}
do --env {
    let ssh_agent_file = (
        $nu.temp-path | path join $"ssh-agent-(whoami).nuon"
    )

    if ($ssh_agent_file | path exists) {
        let ssh_agent_env = open ($ssh_agent_file)
        if ($"/proc/($ssh_agent_env.SSH_AGENT_PID)" | path exists) {
            load-env $ssh_agent_env
            return
        } else {
            rm $ssh_agent_file
        }
    }

    let ssh_agent_env = ^ssh-agent -c
        | lines
        | first 2
        | parse "setenv {name} {value};"
        | transpose --header-row
        | into record
    load-env $ssh_agent_env
    $ssh_agent_env | save --force $ssh_agent_file
}
let mise_path = $nu.default-config-dir | path join mise.nu
^mise activate nu | str replace "export-env {" "" | prepend "export-env {" | save $mise_path --force
