json.notes
  json.array! @notes do |note|
    json.(note, :title, :body, :created_at, :updated_at)
  end
