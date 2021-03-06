export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:$HOME/.nodebrew/current/bin
alias ls='ls -G'
export LSCOLORS=gxfxcxdxbxegedabagacad
  if [ -f ~/.bashrc ]; then
      . ~/.bashrc
  fi
  export PATH=$HOME/.nodebrew/current/bin:$PATH
 
  function parse_git_branch {
      git branch --no-color 2> /dev/null | sed -e '/^[^*]/d    ' -e 's/* \(.*\)/ [\1]/'
 }
  function promps {
      # 色は気分で変えたいかもしれないので変す宣言しておく
      local  BLUE="\[\e[0;34m\]"
      local  LIGHTBLUE="\[\e[1;34m\]"
      local  RED="\[\e[1;31m\]"
      local  GREEN="\[\e[1;32m\]"
      local  WHITE="\[\e[00m\]"
      local  GRAY="\[\e[1;37m\]"
      local  CYAN="\[\e[0;36m\]"
      local  LIGHTCYAN="\[\e[1;36m\]"
      local  YELLOW="\[\e[1;33m\]"
      local  PURPLE="\[\e[1;35m\]"
 
      case $TERM in
         xterm*) TITLEBAR='\[\e]0;\W\007\]';; *)       TITLEBAR="";;
     esac
     local BASE="\u@\h"
      PS1="${TITLEBAR}${WHITE}${BASE}${WHITE}:${WHITE}\W${LIGHTCYAN}\$(parse_git_branch)${WHITE}\$${WHITE} "
 }
  promps

