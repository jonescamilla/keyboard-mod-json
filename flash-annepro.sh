#!/bin/bash
# move file from git to documents
cp /Users/admin/git/keyboard-mods/annepro2/keymaps/default/keymap.c /Users/admin/Documents/annepro/annepro-qmk/keyboards/annepro2/keymaps/default

# navigating to build
cd /Users/admin/Documents/annepro/annepro-qmk/

# run the build for qmk
make annepro2/c18

# move the built default to annepro tools
echo ""
mv /Users/admin/Documents/annepro/annepro-qmk/annepro2_c18_default.bin /Users/admin/Documents/annepro/AnnePro2-Tools/target/release/annepro2_c18_default.bin

# navigating to flash...
cd /Users/admin/Documents/annepro/AnnePro2-Tools/target/release/

# flash annepro
echo ""
./annepro2_tools  annepro2_c18_default.bin -p 8009 --loosy
