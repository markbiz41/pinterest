json.array!(@pins) do |pin|
  json.extract! pin, :id, :title, :description, :board_id, :url, :image, :user_id
  json.url pin_url(pin, format: :json)
end
