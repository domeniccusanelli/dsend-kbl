#!/bin/bash

# Copy the custom keymap file to the xkb symbols directory
sudo cp your_keymap_file /usr/share/X11/xkb/symbols/

# Insert custom layout entry in the evdev.xml file
# Creates a .bak backup of the original file before modifying it
sudo sed -i.bak '/<\/layoutList>/i \
    '"$(cat evdev_entry.xml)"'
' /usr/share/X11/xkb/rules/evdev.xml
