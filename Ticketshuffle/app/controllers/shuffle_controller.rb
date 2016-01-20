class ShuffleController < ApplicationController
  def overview
    @users = User.all
  end

  def shuffle
  end
end
