json.array!(@work_logs) do |work_log|
  json.extract! work_log, :user_id, :time_result, :memo
  json.url work_log_url(work_log, format: :json)
end