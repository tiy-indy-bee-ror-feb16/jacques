json.tag do
  json.name @tag.name
end

json.notes do
  json.array! @tag.notes do |note|
    json.partial! 'note', note: note
  end
end
