#!/bin/bash

for file in *; do
if [ -s $file ]; then
echo "$file has some content" >> results.txt
cat $file
else
echo "$file has no content" >> results.txt
fi
done
cat $results.txt
