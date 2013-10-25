json.array!(@outputs) do |output|
  json.extract! output, :id, :presetId, :key, :thumbnailPattern, :rotate, :segmentDuration, :status, :duration, :width, :height, :job_id
  json.url output_url(output, format: :json)
end
