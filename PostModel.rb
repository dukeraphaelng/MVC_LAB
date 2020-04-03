class PostModel
    def initialize
        @posts = []
        @current_id = 0
    end

    def create(post)
        @current_id += 1
        post["id"] = @current_id
        @posts.push(post)

        return post
    end

    def all
        return @posts
    end

    def find(id)
        post = @posts.find do |post|
            post["id"] == id
        end

        return post
    end
end