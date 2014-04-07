class PageController < ApplicationController
  def index
  end

  def search
    @posts = Post.all
    @recherche = params[:q]
  end

  def profil_search
    @users = User.all
    @recherche = params[:q]
  end
end
