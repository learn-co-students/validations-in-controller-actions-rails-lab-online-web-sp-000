class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post.update(post_params) #new post object
    if @post.valid? #run validations
    redirect_to post_path(@post)
  else
    render :edit #renders an edit form if post is invalid (missing title, content short, invalid category)
  end
end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end

# in models/post.rb
# class Post < ActiveRecord::Base
#  validates_presence_of :title
#  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
#  validates :content, length: { minimum: 100 }
# end
