#!/bin/bash
dir="/opt/keyboard-switch/"
regexDir="\/opt\/keyboard-swtich\/" # Equal to /opt/keyboard-switch/

mkdir -p $dir
cp key-disable.png $dir
cp key-enable.png $dir

cp keyboard-switch.sh $dir
cp keyboard-switch.desktop $dir

sed -i "s/\/path\//$regexDir/g" $dir/keyboard-switch.desktop
sed -i "s/\/path\//$regexDir/g" $dir/keyboard-switch.sh

chmod +x $dir/keyboard-switch.sh # Adding executable bit so it can be executed