json.errors do
  json.array! object.errors.full_messages do |message|
    json.error message
  end
end
