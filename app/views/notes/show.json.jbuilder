json.note do
  json.title(@note, :title, :body, :created_at, :updated_at)
  json.tags do
    json.array! @note.tags do |tag|
      json.name tag.name
    end
  end
end
