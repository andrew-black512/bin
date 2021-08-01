#!/usr/bin/ruby
#TODO - try $?.success?
#  https://stackoverflow.com/questions/18728069/ruby-system-command-check-exit-code

out = []
branch =`git symbolic-ref --short HEAD`
branch.chomp!
branch = '-' if branch =~ /fatal:/
out.push  branch
# todo - change to ~ and truncate...
out.push Dir.pwd
out.push '$ '  # $ reminds me of DCL

print out.join ' '
