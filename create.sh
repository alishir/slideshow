#!/usr/bin/env fish
set base_name $argv[1]
set ar_size $argv[2]
set sp_size $argv[3]
set fa_size $argv[4]
sed -e "s/AR_SIZE/$ar_size/g" -e "s/SP_SIZE/$sp_size/g" -e "s/FA_SIZE/$fa_size/g" {$base_name}.txt > {$base_name}_tmp.txt
echo {$base_name}_e.png
convert -background '#eee8d5' -gravity center -font 'KFGQPC Uthman Taha Naskh' pango:@{$base_name}_tmp.txt {$base_name}.png
#convert -gravity center -extent 3840x2160 {$base_name}.png {$base_name}_e.png
convert -gravity center -extent 1280x720 {$base_name}.png {$base_name}_e.png
# mupdf {$base_name}_e.png
