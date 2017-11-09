if [ -f ~/config/.bashrc ]; then
  source ~/config/.bashrc
  for f in ~/config/bash/functions/*.bash; do source $f; done
fi

