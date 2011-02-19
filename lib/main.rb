# To change this template, choose Tools | Templates
# and open the template in the editor.
require './lib/searchy.rb'
@s = KickAssTorrents.new
results = @s.query(ARGV.first)
torrentpath = @s.geturl(results[0])
puts torrentpath
