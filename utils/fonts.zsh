function install-hack() {
  mkdir -p ~/.local/share/fonts/

  for file in ./files/Hack*.ttf
  do
    local name=$(basename ${file} ./files)

    [ -e ~/.local/share/fonts/${name} ] || {
      echo "installing font ${name}"
      cp "$file" ~/.local/share/fonts/${name}
      local succ="added"
    }
  done

  [ -v succ ] && {
    fc-cache -f -v
  } || true
}

