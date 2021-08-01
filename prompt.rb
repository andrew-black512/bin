#!/usr/bin/ruby
require 'colorize' # causes problems with prompt...

# semi config
branch_special = { 'master' => 1, 'develop'=>1}
# Main

out = []
branch =`git symbolic-ref --short HEAD`
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
