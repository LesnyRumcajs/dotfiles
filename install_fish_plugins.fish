#!/bin/fish

# If plugins file provided, use it, otherwise default to `fish_plugins.txt`
if test -z $argv
    set PLUGINS_FILE "fish_plugins.txt"
else
    set PLUGINS_FILE $argv
end

for plugin in (cat $PLUGINS_FILE)
    omf install $plugin
end
