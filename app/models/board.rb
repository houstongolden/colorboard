class Board < ActiveRecord::Base
  def colors
    JSON.parse(self.color_data)
  end

  def colors=(val)
    self.colors = JSON.stringify(val)
  end
end
