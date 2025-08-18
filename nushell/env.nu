let ripgrep_dir = ($nu.config-path 
    | path dirname
    | path join ".." "nvim" "ripgrep" "target" "release"
    | path expand)

if not ($ripgrep_dir | path exists) {
    print "Warning: It seems that ripgrep is not installed yet. Please check again and build via 'cargo --release' if necessary."
} else {
    $env.PATH = ($env.PATH | prepend $ripgrep_dir)
}
