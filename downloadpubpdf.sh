#!/bin/bash

# Author: Tomas Zach
# School: FEL CTU

# Script for downloading public dataset

[ $# -ne 1 ] && { echo "$0 outputDir"; exit 1; }

links=( "https://archive.org/download/the-door-march-2010/201003.pdf"
	"https://archive.org/download/the-door-september-2010/201009.pdf"
	"https://archive.org/download/the-door-november-2010/201011.pdf"
	"https://archive.org/download/the-door-march-2011/201103.pdf"
	"https://archive.org/download/the-door-june-2011/201106.pdf"
      	
      )
        
for link in "${links[@]}"; do
	echo "$link"
	filename=$(basename -- "$link")
	wget -O "${1}/$filename" "$link"
done
