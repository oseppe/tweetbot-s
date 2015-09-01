require './salawikain.rb'
require './tweet.rb'

desc "Print out a salawikain"
task :basa do
  saying = Salawikain.new
  puts saying.basa
end

desc "Tweet a salawikain"
task :tweet do
  tweet
end

