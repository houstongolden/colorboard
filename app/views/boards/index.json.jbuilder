json.array!(@boards) do |board|
  json.extract! board, :id, :name, :columns_count, :rows_count, :color_data
  json.url board_url(board, format: :json)
end
