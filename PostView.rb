class PostView
    def create
        puts "Please enter a title for the post"
        title = gets.chomp

        puts "Please enter a body for the post"
        body = gets.chomp

        return { "title" => title, "body" => body }
    end

    def index(posts)
        puts "\n"

        if (posts.length == 0)
            puts "There are no posts to view \n\n"
        else
            puts "CURRENT POSTS"
            posts.each do |post|
                puts "id: #{post["id"]}"
                puts "title: #{post["title"]}"
                puts "\n\n"
            end
        end
    end

    def selection
        puts "What is the id of the post you would like to view?"
        id = gets.chomp

        return id
    end

    def show(post)
        puts "\n"

        if(post)
            puts "Title:"
            puts post["title"]
            puts "\n"
            puts "Body:"
            puts post["body"]
            puts "\n"
        else
            puts "Could not find post \n\n"
        end
    end
end