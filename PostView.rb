# frozen_string_literal: true

require_relative('helpers.rb')

class PostView
  def index(posts)
    puts "\n"

    if posts.empty?
      puts "There are no posts to view \n\n"
    else
      puts 'CURRENT POSTS'

      posts.each do |post|
        puts "id: #{post['id']}"
        puts "title: #{post['title']}"
        puts "\n\n"
      end
    end
  end

  def create
    title = ask('Please enter a title for the post: ')
    body = ask('Please enter a body for the post: ')
    { 'title' => title, 'body' => body }
  end

  def selection
    id = ask('What is the id of the post?')
  end

  def show(post)
    puts "\n"
    if post
      puts 'Title: ' + "\n" + post['title'] + "\n\n" + 'Body: ' + "\n" + post['body'] + "\n"
      # else
      #   puts 'Could not find post \n\n'
    end
  end

  def post_missing(id)
    puts "Post with #{id} does not exist."
  end

  def edit
    title = ask_pure('Please enter a new title. Press enter to skip')
    body = ask_pure('Please enter a new body. Press enter to skip')
    { 'title' => title, 'body' => body }
  end

  def destroy(post)
    puts "\n" + "Post with id: #{post['id']} and title: #{post['title']} has been destroyed."
  end

  def empty
    puts "\n There are currently no posts."
  end
end
