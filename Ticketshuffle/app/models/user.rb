class User < ActiveRecord::Base

  def chance
      if (self.tickets == 0)
        if (self.games == 0)
            100
          else
            self.games * 100
          end
      else
        (Float(self.games) / Float(self.tickets)) * 100
      end
  end

end
