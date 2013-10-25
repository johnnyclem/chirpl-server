json.array!(@output_keys) do |output_key|
  json.extract! output_key, :name, :playlist_id
  json.url output_key_url(output_key, format: :json)
end
