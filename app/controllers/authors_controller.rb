class AuthorsController < ApplicationController
 
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      flash[:notice]="You successfully entered your information"
      redirect_to author_path(@author)
    else
      flash[:error]="Invalid name or email"
      render :new
    end
  end 

  private

  def author_params
    params.permit(:email, :name)
  end
end
