json.extract! photo, :id, :title, :relationship_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
