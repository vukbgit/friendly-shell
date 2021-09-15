#from https://gist.github.com/gibatronic/44073260ffdcbd122e9520756c8e35a1#file-complete_npx-sh
no_modules() {
	local project_root=$1

	[ ! -r "$project_root/node_modules" ]
}

complete_npx() {
	local project_root=$(pwd -P)

	while no_modules "$project_root"; do
		if [ "$project_root" = '/' ]; then
			return 1
		fi

		project_root=$(dirname "$project_root")
	done

	local words=$(find "$project_root/node_modules/.bin" | tail -n +2 | xargs -L 1 -- basename)
	local current_word=${COMP_WORDS[COMP_CWORD]}

	COMPREPLY=( $(compgen -W "${words[@]}" -- "$current_word" ) )
}

complete -F complete_npx npx
