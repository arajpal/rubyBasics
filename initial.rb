puts "hello ruby! Abhay is here"#here we can print a line 
print <<EOF#print with the use of here document
This is the first ruby program
by here document so that i can get to know that it is working.
EOF
print <<"EOF";
This is second ruby document
here it is done by  double qoutes
EOF
print <<'EOF'
hey mama
hey mama
EOF
print <<"foo", <<"bar"
  i said foo.
foo
  i said bar.
bar
puts "hey i am in bestpeers"#use of BEGIN and END
BEGIN {
  puts "hey i am in indore"
}
END {
  puts "hey i am in office right now!!"
}