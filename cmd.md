convert -background '#eee8d5' -gravity center -font 'KFGQPC Uthman Taha Naskh' pango:@pango_test.txt pango_test.png
convert -gravity center -extent 3840x2160 pango_test.png test.png
grep pkt_pts *.txt | sort -r | awk -F':|=' 'BEGIN {tn=1000}{printf duration
%f\nfile %s\n, tn - $3, ; tn = $3} END {print ffconcat version 1.0}' > ffconcat.txt
ffmpeg -f concat -i ffconcat_rev.txt -vsync vfr -pix_fmt yuv420p output.mp4
ffmpeg -i output.mp4 -i tmp/audio.aac -c:v copy -c:a copy -bsf:a aac_adtstoasc output_sound.mp4
