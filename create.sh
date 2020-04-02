#!/usr/bin/env fish
set base_name $argv[1]
echo {$base_name}_e.png
convert -background '#eee8d5' -gravity center -font 'KFGQPC Uthman Taha Naskh' pango:@{$base_name}.txt {$base_name}.png
convert -gravity center -extent 3840x2160 {$base_name}.png {$base_name}_e.png
mupdf {$base_name}_e.png
