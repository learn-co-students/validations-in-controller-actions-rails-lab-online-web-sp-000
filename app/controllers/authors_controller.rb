class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
<<<<<<< HEAD
    @author = Author.create(author_params)
=======
    @author = Author.create!(author_params)
>>>>>>> 0211cc36776688e84d5a33b31b2c5e8c2632cfc6
    if @author.save
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
