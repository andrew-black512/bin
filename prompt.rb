#!/usr/bin/ruby

out = []
branch =`git symbolic-ref --short HEAD`
branch.chomp!
branch = '-' if branch =~ /fatal:/
out.push  branch
# todo - change to ~ and truncate...
out.push Dir.pwd
out.push '$ '  # $ reminds me of DCL

print out.join ' '
