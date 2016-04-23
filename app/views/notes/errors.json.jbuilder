json.errors do
  json.array! @note.errors.full_messages do |msg|
    json.error msg
  end
end
