class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    #This ensures that the information written isn't lost. If I wanted to use just create method immidiately, the data would be lost, if params was not acceptable.
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
