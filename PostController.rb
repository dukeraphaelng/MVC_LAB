require_relative("PostModel")
require_relative("PostView")

class PostController
    def initialize
        @model = PostModel.new
        @view = PostView.new
    end
    
    def index
        #retrieve all posts - PostModel
        posts = @model.all
        
        #display posts to the user - PostView
        @view.index(posts)
    end

    def show
        #retrieve the id of the post the user want to view
        id = @view.selection.to_i
        
        #find the correct post
        post = @model.find(id)
        
        #display the post to the user
        @view.show(post)
    end

    def create
        #Get information from the user about the post - PostView
        post_information = @view.create

        #Save the post - PostModel
        new_post = @model.create(post_information)
    end

    def edit

    end

    def destroy

    end
end