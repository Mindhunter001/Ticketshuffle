class ShuffleController < ApplicationController
  def overview
    @users = User.all
  end

  def toggleactive
    @user = User.find(params[:id])
    @user.update(active: !@user.active)

    redirect_to :back
  end

  def shuffle
    @users = User.where(active: true) #.to_a.each { |u| u << :chance }
    @totalchanches = 0
    @users.each do |user|
      @totalchanches += user.chance
    end

    @totalchanches = rand(@totalchanches)

    @users.each do |user|
      if (@totalchanches > user.chance)
        @totalchanches -= user.chance
      else
        @winner = user
        user.update_attribute(:tickets, user.tickets += 1)
        break
      end
    end

    @users.each do |user|
      user.update_attribute(:games, user.games += 1)
    end

  end

end
