#!/bin/bash
echo ''
echo 'NOTES: '
echo 'to output script as text file run the following in terminal: ./intro_to_linux_part1.sh > output.txt'
echo 'to append part2 to output.txt: ./intro_to_linux_part2.sh >> output.txt'
echo 'the following files will be created in this directory: [new_words.txt, output.txt, words_archive.tar]'
echo ''
echo '-------------'
echo 'Begin PART 1'
echo '-------------'

# OUTPUT my username and the current date
echo "My linux user account name is $USER"
current_date=$(date +"%Y-%m-%d")
echo "Today's date is $current_date"
echo '------------------------------'
echo ''

echo 'GOAL 1: Change the directory to where you just made the copy and print out the path to the directory.'
echo 'COMMAND 1: pwd ./'
echo '-----------------'
echo 'OUTPUT: '
pwd ./
echo ''
echo ''

echo 'GOAL 2: Print out the beginning of the file and the end of the file out.'
echo 'COMMAND 2: (head words; tail words) | cat'
echo '-----------------'
echo 'OUTPUT: < user enters word >'
(head words; tail words) | cat
echo ''
echo ''


echo 'GOAL 3: Prompt user for a word to search dictionary for.'
echo "COMMAND 3: read -p 'Enter the word you'd like to search for: ' word_to_search"
echo '-----------------'
echo 'OUTPUT: < user enters a word >'
read -p "Enter the word you'd like to search for: " word_to_search
echo ''
echo ''

echo 'GOAL 4: Search for prompted word.'
echo 'COMMAND 4: grep $word_to_search words'
echo '-----------------'
echo 'OUTPUT: '
grep $word_to_search words
echo ''
echo ''

echo 'GOAL 5: Display how many lines are in the file “words”'
echo 'COMMAND 5: wc -l words'
echo '-----------------'
echo 'OUTPUT: '
wc -l words
echo ''
echo ''

echo 'GOAL 6: Retrieve the beginning and the end of the file and then append the beginning to the end'
echo 'COMMAND 6: (tail words; head words) | cat'
echo '-----------------'
echo 'OUTPUT: '
(tail words; head words) | cat
echo ''
echo ''

echo 'GOAL 7: Retrieve the beginning, the end, and the word you searched earlier from the file then sort the results'
echo 'COMMAND 7: (tail words; head words; echo $word_to_search) | sort'
echo '-----------------'
echo 'OUTPUT: '
(tail words; head words; echo $word_to_search) | sort
echo ''
echo ''
