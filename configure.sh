#!/bin/sh
PLUGINS_FILE=plugins.conf
GH_URI="https://github.com/"
PLUINS_DIR=pack/vendor/opt

while [[ $# -gt 0 ]]; do
  case $1 in
    -c|--clean)
      CLEAN_INSTALL=true
      shift
      shift
      ;;
    -h|--help)
      HELP=true
      shift
      shift
      ;;
    *)
      shift
      ;;
  esac
done

get_name() {
  echo $2
}

get_url() {
  echo "https://github.com/$1.git"
}

clean_install() {
  rm -rf $PLUINS_DIR
  mkdir -p $PLUINS_DIR
}

install_or_update () {
  cat $PLUGINS_FILE | sed -e '/^#/d' -e '/^$/d' |
  while read line || [[ -n $line ]];
  do
    org_repo=$(echo $line | tr "/" " ")
    name=$(get_name $org_repo)
    dir="$PLUINS_DIR/$name"
    if [ -d "$dir" ];
    then
      back=$(pwd)
      cd $dir
      git pull -fq
      echo "update $line"
      cd $back
    else
      url=$(get_url $line)
      git clone -q $url "$PLUINS_DIR/$name"
      echo "get $line"
    fi
  done
  echo "done"
  echo ""
  echo "make sym link to pack dir on ~/.vim/pack"
  echo "cd ~/.vim"
  cur_dir=$(pwd)
  echo "ln -s $cur_dir/pack pack"
}

if [ -n "$HELP" ];
then
  echo "usage ./configure.sh [--help|--clean]"
  echo ""
  echo "-h|--help    show this message"
  echo "-c|--clean   clean install (clean installed plugins)"
  exit
fi

if [ -n "$CLEAN_INSTALL" ];
then
  clean_install
fi

install_or_update
