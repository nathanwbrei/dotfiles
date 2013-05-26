
alias julia /Applications/Julia.app/Contents/Resources/julia/bin/julia

. ~/.config/fish/virtualfish/virtual.fish
set BROWSER open
set EDITOR vim
set -g -x PATH /usr/local/share/python $PATH
set -g -x PATH /usr/local/bin $PATH
set -g -x PATH $HOME/.local/bin $PATH
set -g -x fish_greeting ''
set VIMCLOJURE_SERVER_JAR $HOME/.vim/autlib/vimclojure/server-2.3.0.jar
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
