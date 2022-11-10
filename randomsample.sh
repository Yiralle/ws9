#!/bin/sh



if [ -f "amazon_reviews_us_Books_v1_02.tsv" ]
then
	RAND=$(shuf -i 1-99 -n 1)
	awk -v a=$RAND 'BEGIN {srand()} rand() <= a/100' amazon_reviews_us_Books_v1_02.tsv
else
	echo "File does not exist, exiting the script"
fi
