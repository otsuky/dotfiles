status --is-interactive; and source (nodenv init -|psub)

## rbenv init setting
status --is-interactive; and source (rbenv init -|psub)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/uu167856/google-cloud-sdk/path.fish.inc' ]; . '/Users/uu167856/google-cloud-sdk/path.fish.inc'; end
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
