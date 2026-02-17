```bash
1. Basics

Shebang
#!/bin/bash


Running a Script
chmod +x script.sh   # Make executable
./script.sh           # Run
bash script.sh        # Run without executable permission


Comments
# This is a comment
echo "Hello"  # Inline comment


Variables
NAME="DevOps"
echo $NAME
echo "$NAME"   # Preserves spaces
echo '$NAME'   # Prints literal $NAME


Reading User Input
read -p "Enter your name: " NAME
echo "Hello $NAME"


Command-line Arguments
echo "Script name: $0"
echo "First arg: $1"
echo "Total args: $#"
echo "All args: $@"
echo "Exit status of last cmd: $?"


2. Operators and Conditionals

String Comparisons
if [ "$a" = "$b" ]; then echo "Equal"; fi
if [ "$a" != "$b" ]; then echo "Not equal"; fi
if [ -z "$a" ]; then echo "Empty string"; fi
if [ -n "$a" ]; then echo "Not empty"; fi

Integer Comparisons
if [ $a -eq $b ]; then echo "Equal"; fi
if [ $a -ne $b ]; then echo "Not equal"; fi
if [ $a -lt $b ]; then echo "Less than"; fi
if [ $a -gt $b ]; then echo "Greater than"; fi
if [ $a -le $b ]; then echo "Less or equal"; fi
if [ $a -ge $b ]; then echo "Greater or equal"; fi


File Test Operators
[ -f file ]   # File exists and is regular
[ -d dir ]    # Directory exists
[ -e file ]   # Exists
[ -r file ]   # Readable
[ -w file ]   # Writable
[ -x file ]   # Executable
[ -s file ]   # Non-empty


If-Else Syntax
if [ condition ]; then
    echo "Do this"
elif [ condition ]; then
    echo "Do that"
else
    echo "Fallback"
fi


Logical Operators
[ -f file ] && echo "File exists"
[ -f file ] || echo "File missing"
! [ -f file ] && echo "File does not exist"

Case Statement
case "$VAR" in
  start) echo "Starting";;
  stop) echo "Stopping";;
  *) echo "Unknown";;
esac



3. Loops

For Loop
for i in 1 2 3; do
  echo $i
done

for ((i=0; i<5; i++)); do
  echo $i
done


While Loop
count=0
while [ $count -lt 5 ]; do
  echo $count
  ((count++))
done


Until Loop
count=0
until [ $count -ge 5 ]; do
  echo $count
  ((count++))
done


Loop Control
for i in {1..5}; do
  if [ $i -eq 3 ]; then continue; fi
  if [ $i -eq 4 ]; then break; fi
  echo $i
done



Looping over Files
for file in *.log; do
  echo $file
done


Looping over Command Output
ls -l | while read line; do
  echo $line
done



4. Functions

Defining and Calling
greet() {
  echo "Hello $1"
}
greet "DevOps"



Return Values
sum() {
  local result=$(( $1 + $2 ))
  echo $result   # Use echo to capture output
  return $result # Optional numeric return (0-255)
}


Local Variables
myfunc() {
  local VAR="local"
  echo $VAR
}


5. Text Processing Commands



grep — search patterns, -i, -r, -c, -n, -v, -E
awk — print columns, field separator, patterns, BEGIN/END
sed — substitution, delete lines, in-place edit
cut — extract columns by delimiter
sort — alphabetical, numerical, reverse, unique
uniq — deduplicate, count
tr — translate/delete characters
wc — line/word/char count
head / tail — first/last N lines, follow mode


grep
grep "pattern" file
grep -i "error" file     # Ignore case
grep -r "error" dir      # Recursive
grep -c "error" file     # Count
grep -n "error" file     # Show line numbers
grep -v "pattern" file   # Invert match
grep -E "error|fail" file # Extended regex


awk
awk '{print $1}' file
awk -F: '{print $1}' /etc/passwd
awk '/pattern/ {print $2}'
awk 'BEGIN{print "Start"} END{print "End"}'


sed
sed 's/old/new/g' file
sed '/pattern/d' file
sed -i 's/foo/bar/g' file   # In-place edit


cut
cut -d':' -f1 /etc/passwd


sort
sort file.txt
sort -nr file.txt   # Numerical, reverse
sort -u file.txt    # Unique


uniq
uniq file.txt
uniq -c file.txt   # Count duplicates


tr
echo "hello" | tr 'a-z' 'A-Z'
echo "hello" | tr -d 'e'


wc
head -n 5 file.txt
tail -n 5 file.txt
tail -f file.txt   # Follow log


6. Useful Patterns & One-Liners

# Delete files older than 7 days
find /tmp -type f -mtime +7 -exec rm {} \;

# Count lines in all .log files
wc -l *.log

# Replace string across multiple files
sed -i 's/old/new/g' *.txt

# Check if nginx is running
systemctl is-active nginx

# Monitor disk usage
df -h | awk '$5 > 80 {print $0}'

# Parse CSV
awk -F',' '{print $2}' file.csv

# Tail log and filter errors
tail -f app.log | grep ERROR



7. Error Handling & Debugging

echo $?           # Exit code of last command
exit 0            # Success
exit 1            # Failure

set -e            # Exit on any error
set -u            # Treat unset variables as error
set -o pipefail   # Fail if any command in pipe fails
set -x            # Debug mode (trace commands)

trap 'echo Cleanup; exit' EXIT







