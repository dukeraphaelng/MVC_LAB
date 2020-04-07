require_relative("PostController")
controller = PostController.new

while true
    puts "What would you like to do?"
    puts "1 - View all posts"
    puts "2 - View a single post"
    puts "3 - Create a new post"
    puts "4 - Edit a post"
    puts "5 - Delete a post"
    puts "6 - Exit"
    
    choice = gets.chomp.to_i
    
    case choice
    when 1
        controller.index
    when 2
        controller.show
    when 3
        controller.create
    when 4
        controller.edit
    when 5
        controller.destroy
    when 6
        break
    else
        puts "Please pick a valid choice"
    end
end

puts "Goodbye"