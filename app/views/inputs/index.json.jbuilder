json.array!(@inputs) do |input|
  json.extract! input, :key, :frameRate, :resolution, :aspectRatio, :interlaced, :container, :job_id
  json.url input_url(input, format: :json)
end
