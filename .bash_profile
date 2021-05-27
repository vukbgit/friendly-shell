if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
# the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar
