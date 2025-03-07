#!/bin/bash
echo "***********************"
echo "***********************"
for file in *; do
if [ -s $file ]; then
echo "$file has some content" >> results.txt
else
echo "$file has no content" >> results.txt
fi
done
echo "***********************"
echo "***********************"
cat results.txt
echo "***********************"

