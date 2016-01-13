class Board < ActiveRecord::Base
  WHITE = "#FFFFFF"

  before_create :set_color_data

  def colors
    @colors ||= JSON.parse(self.color_data)
  end

  def color_at(row, col)
    index = row * self.columns_count + col
    colors[index]
  end

  protected

  def set_color_data
    data = []
    (rows_count * columns_count).times { data << WHITE }
    self.color_data = data.to_json
  end
end
