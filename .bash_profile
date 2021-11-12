if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
if [ -f ~/complete_npx.sh ]; then
  . ~/complete_npx.sh
fi
# the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar
#set git CLI language to English for meaningful messages
alias git='LC_ALL=en_GB git'
