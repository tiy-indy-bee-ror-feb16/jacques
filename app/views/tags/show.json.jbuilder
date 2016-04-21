json.tag do
  json.name @tag.name
end

json.notes do
  json.array! @tag.notes do |note|
    json.(note, :title, :body, :created_at, :updated_at)
    json.tags do
      json.array! note.tags do |tag|
        json.name tag.name
      end
    end
  end
end
