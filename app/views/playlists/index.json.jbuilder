json.array!(@playlists) do |playlist|
  json.extract! playlist, :name, :format, :status, :job_id
  json.url playlist_url(playlist, format: :json)
end
