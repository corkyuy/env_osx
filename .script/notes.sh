NOTE_SRC=~/notes/notes

n() {
  $EDITOR $NOTE_SRC/"$1".md
}

nls() {
  ls -c $NOTE_SRC/ | grep "$*"
}

ns() {
  grep --color=always -iRnH "$*" $NOTE_SRC/* | awk ' \
    function basename(file, a, n) \
    { \
      n = split(file, a, "/");\
      return a[n] \
    };\
    { split($0,a,":"); \
      print basename(a[1]) ":" a[2] ":"  a[3] \
    }'
}

na() {
  echo "${@:2}" >> $NOTE_SRC/"$1".md
}

nr() {
  rm -i $NOTE_SRC/"$1".md
}

np() {
  pushd $NOTE_SRC
  git add *.md
  git add -u
  gc -m "Updates: $* "
  gp
  popd
}
