class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    #remember when you use @author.save then this asks like the valid?, otherwise it would not save
      if @author.save
        redirect_to author_path(@author)
      else
        # re-render the :new template WITHOUT throwing away the invalid @author
        render :new
    end 
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
