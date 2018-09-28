NOTE_SRC=~/notes

notes_sync() {
  pushd $NOTE_SRC > /dev/null 2>&1
  ga *.md
  gc -a -m "Updates"
  gp origin master
  popd > /dev/null 2>&1
}
