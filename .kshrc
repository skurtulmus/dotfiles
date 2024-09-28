# shell rc

export PS1='[\[\e[33m\]\u\[\e[34m\]@\[\e[36m\]\h\[\e[m\]: \[\e[1;30m\]\w\[\e[m\]]\$ '

[[ $- != *i* ]] && return

export PATH=$PATH:~/.local/bin:~/.local/share/perl5/bin
export PERL5LIB=$PERL5LIB:~/.local/share/perl5
export PERL_LOCAL_LIB_ROOT=$PERL_LOCAL_LIB_ROOT:~/.local/share/perl5/
export PERL_MB_OPT="--install_base \"~/.local/share/perl5\""
export PERL_MM_OPT="INSTALL_BASE \"~/.local/share/perl5\""
export EDITOR=vim
export PAGER=less
export PYGMENTIZE_STYLE=lovelace
export TEXMFHOME=~/.config/latex-custom
export STARDICT_DATA_DIR=~/.local/share/sdcv
#export LESS="-Dd+9\$Du+11\$Ds+2\$Dk4\$ --incsearch"
export LESSHISTFILE="-"
export XDG_RUNTIME_DIR=/run/user/1000
export KUBECONFIG="$HOME/.kube/config"
. "$HOME/.cargo/env"

set -o noclobber
set -o vi
# set +o history # bash

alias doas='doas '
alias xup='xbps-install -Su'
alias xur='xbps-install -S'
alias xin='xbps-install'
alias xrm='xbps-remove'
alias xro='xbps-remove -o'
alias xdc='xbps-remove -O'
alias xsr='xbps-query -Rs'
alias xli='xbps-query -l'
alias xmn='xbps-query -m'
alias rad='pyradio'
alias k='kubectl'
alias rs='runescape-launcher'
alias nb='newsboat'
alias ox='startx'
alias cl='clear'
alias rm='rm -i'
alias ls='ls --color=always --group-directories-first -F -h'
alias lk='physlock -p Void'
alias vir='vim -R'
alias grep='grep --color=auto'
alias wsc='doas iw dev wlp0s20f3 scan | grep SSID'
alias rew='doas sv restart wpa_supplicant'
alias rel='doas sv restart dhcpcd'
alias wgp='doas wg-quick up wg0'
alias wgn='doas wg-quick down wg0'
alias clc='calcurse'
alias feh='feh --scale-down --image-bg "#222222"'
alias fea='bspc rule -a "feh" state=floating -o && feh -t'
alias spm='pdfpc -s -r fade:0.5:0:h:i'
alias mrg='xrdb ~/.Xresources'
alias cph='ffmpeg -f video4linux2 -i /dev/video0 -vframes 1 ~/pic/webcam/cam_$(date "+%H%M").png'
alias cvd='ffmpeg -video_size 1920x1080 -framerate 25 -f video4linux2 -i /dev/video0 ~/vid/cvd_$(date "+%H%M").mkv'
alias rvd='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 ~/vid/vd_$(date "+%H%M").mkv'
alias rva='ffmpeg -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+0,0 -f pulse -i 0 ~/vid/va_$(date "+%H%M").mkv'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

con () {
	if [ "$1" = "get" ]; then
		kubectl config get-contexts
	elif [ "$1" = "" ]; then
		kubectl config get-contexts
	else
		kubectl config use-context "$1"
	fi
}

s () {
	pass -c "$1" && ssh "$1"
}

_SSH=$(perl -ne 'print "$1\n" if /^Host\s+(\S+)/' $HOME/.ssh/config)
set -A complete_ssh -- $_SSH
set -A complete_s -- $_SSH

xs () {
	xpkg -a |
	fzf -m --preview 'xq {1}' \
	--preview-window=right:70%:wrap |
	xargs -ro xi
}

xdt () {
	xbps-query $1 -p install-date
}

wtr () {
	curl tr.wttr.in/${1:-istanbul}
}

LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;30:*.tgz=01;30:*.arc=01;30:*.arj=01;30:*.taz=01;30:*.lha=01;30:*.lz4=01;30:*.lzh=01;30:*.lzma=01;30:*.tlz=01;30:*.txz=01;30:*.tzo=01;30:*.t7z=01;30:*.zip=01;30:*.z=01;30:*.dz=01;30:*.gz=01;30:*.lrz=01;30:*.lz=01;30:*.lzo=01;30:*.xz=01;30:*.zst=01;30:*.tzst=01;30:*.bz2=01;30:*.bz=01;30:*.tbz=01;30:*.tbz2=01;30:*.tz=01;30:*.deb=01;30:*.rpm=01;30:*.jar=01;30:*.war=01;30:*.ear=01;30:*.sar=01;30:*.rar=01;30:*.alz=01;30:*.ace=01;30:*.zoo=01;30:*.cpio=01;30:*.7z=01;30:*.rz=01;30:*.cab=01;30:*.wim=01;30:*.swm=01;30:*.dwm=01;30:*.esd=01;30:*.jpg=00;35:*.jpeg=00;35:*.mjpg=00;35:*.mjpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.pgm=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.svg=00;35:*.svgz=00;35:*.mng=00;35:*.pcx=00;35:*.mov=00;31:*.mpg=00;31:*.mpeg=00;31:*.m2v=00;31:*.mkv=00;31:*.webm=00;31:*.webp=00;31:*.ogm=00;31:*.mp4=00;31:*.m4v=00;31:*.mp4v=00;31:*.vob=00;31:*.qt=00;31:*.nuv=00;31:*.wmv=00;31:*.asf=00;31:*.rm=00;31:*.rmvb=00;31:*.flc=00;31:*.avi=00;31:*.fli=00;31:*.flv=00;31:*.gl=00;31:*.dl=00;31:*.xcf=00;35:*.xwd=00;31:*.yuv=00;31:*.cgm=00;31:*.emf=00;31:*.ogv=00;31:*.ogx=00;31:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:*.pdf=00;33:*.ms=00;33:*.tex=00;33:*.md=00;33:*.vmp=00;33:*.docx=00;33:*.doc=00;33:*.xlsx=00;33:*.pptx=00;33:*.odt=00;33:*.odp=00;33:*.mom=00;33:*.epub=00;33:*.ps=00;33:*.ods=00;33:*.gpg=01;36';
export LS_COLORS
