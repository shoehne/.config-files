let ripgrep_dir = ($nu.config-path 
    | path dirname
    | path join ".." "nvim" "ripgrep" "target" "release"
    | path expand)

if not ($ripgrep_dir | path exists) {
    print "Warning: It seems that ripgrep is not installed yet. Please check again and build via 'cargo --release' if necessary."
} else {
    $env.PATH = ($env.PATH | prepend $ripgrep_dir)
}
# mkdir ($nu.data-dir | path join "vendor/autoload")
# ^mise activate nu | save -f ($nu.data-dir | path join "vendor/autoload/mise.nu")
$env.SSH_AUTH_SOCK = $"($env.XDG_RUNTIME_DIR)/ssh-agent.socket"
