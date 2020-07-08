class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.valid? 
      flash[:success]="Succcessfully Updated"
      redirect_to post_path(@post)
    elsif @post.invalid?
      flash[:failure]="Please make a valid entry"
      render :edit
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
