cd ;
git clone https://github.com/rbenv/rbenv.git ~/.rbenv;

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc;
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc;

echo 'eval "$(rbenv init -)"' >> ~/.bashrc;
echo 'eval "$(rbenv init -)"' >> ~/.zshrc;

exec $SHELL;

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build;

echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc;
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.zshrc;

exec $SHELL;

rbenv install 2.3.1;
rbenv global 2.3.1;

ruby -v;
