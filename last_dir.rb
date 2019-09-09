#!/usr/bin/ruby

 
dirglob = ARGV[0] + '*' 
lastd = Dir.glob(dirglob) 
  .sort.last 
puts lastd
