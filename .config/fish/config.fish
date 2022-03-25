status --is-interactive; and source (anyenv init -|psub)

## rbenv init setting
status --is-interactive; and source (rbenv init -|psub)
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/01029233/google-cloud-sdk/path.fish.inc' ]; . '/Users/01029233/google-cloud-sdk/path.fish.inc'; end


# go
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# env
fish_add_path /usr/local/opt/tcl-tk/bin
set -gx LDFLAGS "-L/usr/local/opt/tcl-tk/lib"
set -gx CPPFLAGS "-I/usr/local/opt/tcl-tk/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/tcl-tk/lib/pkgconfig"

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

