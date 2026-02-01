if (sys host | get name) == 'Windows' {
    $env.config.shell_integration.osc133 = false
}

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

mkdir ($nu.data-dir | path join "vendor/autoload")
^mise activate nu | save -f ($nu.data-dir | path join "vendor/autoload/mise.nu")
