# add memory information output to time command
TIMEFMT='%J   %U  user %S system %P cpu %*E total'$'\n'\
'avg shared (code):         %X KB'$'\n'\
'avg unshared (data/stack): %D KB'$'\n'\
'total (sum):               %K KB'$'\n'\
'max memory:                %M MB'$'\n'\
'page faults from disk:     %F'$'\n'\
'other page faults:         %R'


alias kk="kubectl"

# source
# https://blog.jayway.com/2012/09/08/finding-the-pid-listening-on-a-specific-port-on-mac-os-x/
pidportfunction() {
  lsof -n -i4TCP:$1 | grep LISTEN
}

alias pidport=pidportfunction

# git commit hash
alias git-golang-sha="TZ=UTC git --no-pager show \
  --quiet \
  --abbrev=12 \
  --date='format-local:%Y%m%d%H%M%S' \
  --format='%cd-%h'"
