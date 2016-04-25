json.notes do
  json.array! @notes do |note|
    json.title note.title
    json.body note.body
    json.created_at note.created_at
    json.updated_at note.updated_at
    json.tags do
      json.array! note.tags do |tag|
        json.name tag.name
      end
    end
  end
end
