#!/bin/bash

echo '-------------'
echo 'Begin PART 2'
echo '-------------'
echo ''

echo 'GOAL 1: searching for bash scripts I created in present working directory:'
echo 'COMMAND 1: find . -name "*.sh"'
echo '-----------------'
echo 'OUTPUT: '
find . -name "*.sh"
echo ''

echo 'GOAL 2: copy words file to a new file'
echo 'COMMAND 2: cp words new_words.txt'
echo '-----------------'
echo 'OUTPUT: < file is copied >'
cp words new_words.txt
echo ''

echo 'GOAL 3: append text to new_words.txt'
echo "COMMAND 3: echo 'this is the new final line' >> new_words.txt"
echo '-----------------'
echo 'OUTPUT: < see new_words.txt >'
echo 'this is the new final line' >> new_words.txt
echo ''

echo 'GOAL 4: find first text file and open it with default text editor'
echo 'COMMAND 4: find . -name "*.txt" -print0 | xargs -0 -n 1 xdg-open'
echo '-----------------'
echo 'OUTPUT: < first text file is opened >'
find . -name "*.txt" -print0 | xargs -0 -n 1 xdg-open
echo ''

echo 'GOAL 5: compare words and new_words.txt using diff command'
echo 'COMMAND 5: diff -w words new_words.txt'
echo '-----------------'
echo 'OUTPUT: '
diff -w words new_words.txt
echo ''

echo 'GOAL 6: create a directory for tar archive of text files'
echo 'COMMAND 6: mkdir archives'
echo '-----------------'
echo 'OUTPUT: < archives directory is created >'
mkdir archives
echo ''

echo 'GOAL 7: copy text files to archives directory.'
echo 'COMMAND 7: cp words new_words.txt ./archives'
echo '-----------------'
echo 'OUTPUT: < new_words.txt is copied to archives directory >'
cp words new_words.txt ./archives
echo ''

echo 'GOAL 8: archive copied text files.'
echo 'COMMAND 8: archiving copied text files.'
echo '-----------------'
echo 'OUTPUT: < words_arhive.tar file is created >'
tar cvf words_archive.tar ./archives
echo ''

echo 'GOAL 9: delete redundant archives directory'
echo 'COMMAND 9: rm -rf archives'
echo '-----------------'
echo 'OUTPUT: < archives directory is removed >' 
rm -rf archives
echo ''

echo 'GOAL 10: utilize awk tool to search dictionary for words matching `zymo` pattern'
echo "COMMAND 10: awk '/zymo/ {print $0}' words"
echo '-----------------'
echo "printing all words that contain the substring 'zymo'"
echo 'OUTPUT: '
awk '/zymo/ {print $0}' words
