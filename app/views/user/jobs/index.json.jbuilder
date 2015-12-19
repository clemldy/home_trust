json.array!(@jobs) do |job|
  json.extract! job, :id, :started_at, :finished_at, :description, :user_id
  json.url job_url(job, format: :json)
end
