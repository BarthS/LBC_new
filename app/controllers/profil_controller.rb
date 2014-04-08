class ProfilController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def list
    @users = User.all
  end
end
