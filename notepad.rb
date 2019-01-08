require_relative 'lib/post.rb'
require_relative 'lib/task.rb'
require_relative 'lib/memo.rb'
require_relative 'lib/link.rb'

puts "Привет, я блокнот!"
puts "Что хотите написать?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)
entry.read_from_console
entry.save

puts "Запись сохранена"
