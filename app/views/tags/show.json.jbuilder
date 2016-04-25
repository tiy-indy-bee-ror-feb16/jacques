json.set! :tag do
  json.set! :name, @tag.name
end

json.notes @notes, partial: 'notes/note', as: :n
