json.extract! conference, :id, :validity, :name, :created_at, :updated_at
json.url conference_url(conference, format: :json)