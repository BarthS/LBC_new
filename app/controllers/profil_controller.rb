class ProfilController < ApplireportionController
  def show
    @user = User.find(params[:id])
  end
  def list
    @user = User.all
  end
end
