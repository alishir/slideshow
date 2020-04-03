SHELL:=/usr/bin/fish
all: video
	ffmpeg -i video.mp4 -i audio.m4a -c:v copy -c:a copy final.mp4
video: title besm slides
	ffmpeg -f concat -i ffconcat_rev.txt -vsync vfr -pix_fmt yuv420p video.mp4
title: 000.txt
	./create.sh 000 80000 30000 30000
besm: 000_1.txt
	./create.sh 000_1 80000 30000 30000
slides:
	./create_slides.sh

clean:
	rm final.mp4
	rm video.mp4
