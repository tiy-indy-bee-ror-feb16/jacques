json.notes do
  json.array!(@notes) do |note|
    json.extract! note, :title, :body, :created_at, :updated_at
    json.tags do
      json.array!(note.tags) do |nt|
        json.extract! nt, :name
      end
    end
  end
end
