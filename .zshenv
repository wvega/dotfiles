# Execute binaries from Composer's vendor directory.
function vendor() {
    vendor/bin/$1 "${@:2}"
}
