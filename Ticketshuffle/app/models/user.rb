class User < ActiveRecord::Base

  def chance

      (Float(self.games) / Float(self.tickets)) * 100
  end

end
