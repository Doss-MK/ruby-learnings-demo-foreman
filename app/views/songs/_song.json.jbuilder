json.extract! song, :id, :name, :type, :singer, :created_at, :updated_at
json.url song_url(song, format: :json)
