class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params) #new author object
    if @author.valid? #run validations
      @author.save
    redirect_to author_path(@author)
  else
    render :new #if author is invalid (missing name, non unique email) renders new form
  end
end

  private

  def author_params
    params.permit(:email, :name)
  end
end


#in models/author.rb
# class Author < ActiveRecord::Base
#  validates :name, presence: true
#  validates :email, presence: true, uniqueness: true
# end
