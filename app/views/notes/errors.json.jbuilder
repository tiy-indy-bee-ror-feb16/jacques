json.errors do
  json.array! @note.errors.full_messages do |message|
    json.error message
  end
end
