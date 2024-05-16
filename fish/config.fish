set -x PATH $PATH ~/personal/space/svd2ada/bin/
if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias l='eza -l --git --grid --time-style relative'

alias ls='eza -l --git --time-style relative'

zoxide init fish --cmd cd | source

function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

set -Ux fish_user_paths /usr/local/go/bin $fish_user_paths
