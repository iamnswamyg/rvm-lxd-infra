#!/bin/bash


if ! dpkg-query -W curl >/dev/null 2>&1; then
  sudo apt install curl -y
fi



sudo apt update
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev -y
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
export PATH="$HOME/.rbenv/bin:$PATH"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
~/.rbenv/bin/rbenv install 3.2.2
~/.rbenv/bin/rbenv global 3.2.2
export PATH="$HOME/.rbenv/versions/3.2.2/bin:$PATH"
/root/.rbenv/versions/3.2.2/bin/ruby -v
rbenv global 3.2.2
ruby -v
echo "gem: --no-document" > ~/.gemrc
gem install bundler
gem update --system 3.4.12
gem env home
gem install rails 
~/.rbenv/bin/rbenv rehash
rails -v
cd ~/.rbenv
git pull


