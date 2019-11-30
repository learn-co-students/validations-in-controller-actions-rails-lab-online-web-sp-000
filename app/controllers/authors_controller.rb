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
      redirect_to author_path(@author)

    else
      # If the post is invalid, hold on to @post, because it is now full of
      # useful error messages, and re-render the :new page, which knows how
      # to display them alongside the user's entries.
      render :new
    end

  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
