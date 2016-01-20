class ShuffleController < ApplicationController
  def overview
    @users = User.all
  end

  def shuffle
  end

  def toggleactive
    @user = User.find(params[:id])

      if user.update(params[:active])
        redirect_to overview_path
  end
end
