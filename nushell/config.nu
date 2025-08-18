if (sys host | get name) == 'Windows' {
    $env.config.shell_integration.osc133 = false
}

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
# vfox configuration
source ($nu.default-config-dir | path join "vfox.nu")
