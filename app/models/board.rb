class Board < ActiveRecord::Base
  WHITE = "#FFFFFF"

  before_create :set_color_data

  def colors
    JSON.parse(self.color_data || "[]")
  end

  def set_colors(val)
    self.color_data = val.to_json
  end

  def color_at(row, col)
    index = row * self.columns_count + col
    colors[index] || WHITE
  end

  protected

  def set_color_data
    data = []
    (rows_count * columns_count).times { data << WHITE }
    set_colors(data)
  end
end
