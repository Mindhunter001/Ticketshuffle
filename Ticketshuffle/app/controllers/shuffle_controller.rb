class ShuffleController < ApplicationController
  def overview
    @users = User.all
  end

  def shuffle
  end

  def toggleactive
    @user = User.find(params[:id])
    @user.update(active: !@user.active)

    redirect_to :Back
  end
end
