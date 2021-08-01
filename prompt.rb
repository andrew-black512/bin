#!/usr/bin/ruby
require 'colorize'
#TODO - try $?.success?
#  https://stackoverflow.com/questions/18728069/ruby-system-command-check-exit-code

# semi config
branch_special = { 'master' => 1, 'develop'=>1}
# Main

out = []
branch =`git branch`
if $?.success?
  branch.sub! '* ',''
  branch.chomp!
  branch = branch.upcase if branch_special[branch]
else
  branch = 'no git'
end

out.push  branch
# todo - change to ~ and truncate...
out.push Dir.pwd  #.light_green
out.push '$ '  # $ reminds me of DCL

print out.join ' '
