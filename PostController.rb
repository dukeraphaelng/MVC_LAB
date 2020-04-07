# frozen_string_literal: true

require_relative('PostModel')
require_relative('PostView')

class PostController
  def initialize
    @model = PostModel.new
    @view = PostView.new
  end

  def index
    posts = @model.all
    @view.index(posts)
  end

  def select_id
    id = @view.selection.to_i
    post = @model.find(id)
    if post
      post
    else
      @view.post_missing(id)
      false
    end
    # post || @view.post_missing(id)
  end

  def show
    empty
    if empty == false
      post = select_id
      @view.show(post) if post
    end
  end

  def create
    post_information = @view.create
    new_post = @model.create(post_information)
  end

  def edit
    empty
    if empty == false
      post = select_id
      if post
        post_information = @view.edit
        @model.edit(post, post_information)
      end
    end
  end

  def destroy
    empty
    if empty == false
      post = select_id
      if post
        @model.delete(post)
        @view.destroy(post)
      end
    end
  end

  def empty
    @model.empty ? @view.empty : false
  end
end
