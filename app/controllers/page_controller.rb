class PageController < ApplicationController
  def index
  end

  def search
    @posts = Post.all
    @recherche = params[:q]
  end
end
