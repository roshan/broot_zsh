addbr() {
  tmp_file=$(mktemp)
  cwd=$(pwd)
  /Applications/Alacritty.app/Contents/MacOS/alacritty -e /bin/sh -c "cd ${cwd} && broot -o ${tmp_file}"
  broot_out=$(< ${tmp_file} && rm ${tmp_file})
  RBUFFER=${broot_out}${RBUFFER}
}
zle -N addbr
bindkey '†' addbr
