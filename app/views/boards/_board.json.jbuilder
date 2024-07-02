json.extract! board, :id, :board_name, :purchase_date, :purchase_price, :current_price, :board_length, :board_volume, :board_type, :last_used_date, :created_at, :updated_at
json.url board_url(board, format: :json)
