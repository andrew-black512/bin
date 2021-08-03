#!/usr/bin/ruby
require '/home/andrew/exp/ruby/color.rb' # causes problems with prompt...

def prompt_wd
  # Print last two directories pwd
  dirs = Dir.pwd.split '/'
  return  dirs[-2] +'/' + dirs[-1]


end

# semi config
branch_special = { 'master' => 1, 'develop'=>1}
# Main

out = []
branch =`git symbolic-ref --short HEAD 2>/dev/null`
if $?.success?
  branch.sub! '* ',''
  branch.chomp!
  #branch = branch.upcase if branch_special[branch]
  branch = branch.colorize(:red) if branch_special[branch]

else
  branch = 'no-git'.colorize(:gray)
end

out.push  branch
# todo - change to ~ and truncate...
out.push prompt_wd.colorize(:green)
out.push '$ '  # $ reminds me of DCL

print out.join ' '
