json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :note_id
  json.url tag_url(tag, format: :json)
end
