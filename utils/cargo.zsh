
function cargoi {
	local pkg="${1:?Need a package to install}"
	local bin="${2:-${1}}"
	[ -e "${HOME}/.cargo/bin/${bin}" ] || {
		echo "installing ${pkg}"
		cargo install "${pkg}"
	}
}


