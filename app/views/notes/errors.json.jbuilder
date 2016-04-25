json.errors do
  json.array! @note.errors.full_messages do |m|
    json.error m
  end
end
