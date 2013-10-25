json.array!(@jobs) do |job|
  json.extract! job, :state, :version, :jobId, :pipelineId, :input_id, :outputKeyPrefix
  json.url job_url(job, format: :json)
end
