# frozen_string_literal: true

class PostModel
  def initialize
    @posts = []
    @current_id = 0
  end

  def create(post)
    @current_id += 1
    post['id'] = @current_id
    @posts.push(post)

    post
  end

  def empty
    @posts.empty?
  end

  def all
    @posts
  end

  def find(id)
    post = @posts.find do |post|
      post['id'] == id
    end

    post
  end

  def edit(post, post_information)
    if post_information['title'] != "\n"
      post['title'] = post_information['title']
    end
    post['body'] = post_information['body'] if post_information['body'] != "\n"

    post
  end

  def delete(post)
    @posts.delete(post)
  end
end
