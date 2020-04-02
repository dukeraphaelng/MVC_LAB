require_relative("PostController")
controller = PostController.new

while true
    puts "What would you like to do?"
    puts "1 - View a post"
    puts "2 - Create a new post"
    puts "3 - Edit a post"
    puts "4 - Delete a post"
    puts "5 - Exit"
    
    choice = gets.chomp.to_i
    
    case choice
    when 1
        controller.show
    when 2
        controller.new
    when 3
        controlled.edit
    when 4
        controller.destroy
    when 5
        break
    else
        puts "Please pick a valid choice"
    end
end

puts "Goodbye"