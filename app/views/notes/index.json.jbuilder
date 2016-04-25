json.notes do
  json.array! @notes do |note|
    json.partial! 'notes/note', n: note
  end
end
