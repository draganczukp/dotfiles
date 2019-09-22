local _path=(
	$HOME/bin
	$HOME/.yarn/bin
	$HOME/.config/yarn/global/node_modules/.bin
	$HOME/.gem/ruby/2.6.0/bin
	$HOME/.local/share/nvim/plugged/vim-superman/bin
	/var/lib/snapd/snap/bin
)

for p in $_path; do
	PATH=$PATH:$p
done

export PATH
