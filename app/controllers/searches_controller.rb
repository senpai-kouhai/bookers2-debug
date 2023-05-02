class SearchesController < ApplicationController

  def search
    @range = params[:range]

    if @range == "User"
      @users = User.looks(params[:search], params[:word])
      render "/searches/search-result"
    else
      @books = Book.looks(params[:search], params[:word])
      render "/searches/search-result"
    end
  end
end
