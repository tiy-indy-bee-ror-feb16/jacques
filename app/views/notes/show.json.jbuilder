json.title n.title
json.body n.body
json.(n, :created_at, :updated_at)
json.tags n.tags.reverse!, :name
