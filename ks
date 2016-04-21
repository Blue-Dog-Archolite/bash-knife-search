#!/usr/bin/env ruby$

top_level = `git rev-parse --show-toplevel`

top_level = top_level.gsub("\n", '')

prefix = if File.exists?([top_level,'Gemfile'].join('/'))
           "bundle exec"
         else 
           ""
         end

name = ARGV.shift


command = [prefix, "knife search #{name} -a shortcuts.public_ip;"]
puts `#{command.join(' ')}`
