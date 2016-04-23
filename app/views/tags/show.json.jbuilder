json.tag do
  json.extract! @tag, :name
end

json.notes do
  json.array!(@tag.notes) do |note|
    json.extract! note, :title, :body, :created_at, :updated_at
    json.tags do
      json.array!(note.tags) do |tag|
        json.extract! tag, :name
      end
    end
  end
end
