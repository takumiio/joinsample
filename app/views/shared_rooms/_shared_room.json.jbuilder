json.extract! shared_room, :id, :conference_id, :user_id, :name, :created_at, :updated_at
json.url shared_room_url(shared_room, format: :json)