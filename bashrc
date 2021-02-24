# Color schema
PS1='\[\033[01;33m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

# Open shell in running docker container
function docker-shell() { docker exec -it $@ /bin/bash; }
function _docker-shell_completions() {
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  COMPREPLY=($(compgen -W "$(docker ps --format {{.Names}})" "${COMP_WORDS[1]}"))
}
complete -F _docker-shell_completions docker-shell
