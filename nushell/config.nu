if (sys host | get name) == 'Windows' {
    $env.config.shell_integration.osc133 = false
}

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

let platform = sys | get host | get name

let omnisharp_path = if $platform == "Windows" {
  $nu.home-path | path join 'config' 'nvim' 'omnisharp' 'artifacts' 'publish' 'OmniSharp' 'windows-x64' 'OmniSharp.exe'
} else {
  $nu.home-path | path join '.config' 'nvim' 'omnisharp' 'artifacts' 'publish' 'OmniSharp' 'linux-x64' 'OmniSharp'
}

let-env OMNISHARP_LANGUAGE_SERVER = $omnisharp_path
