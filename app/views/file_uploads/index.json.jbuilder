json.array!(@file_uploads) do |file_upload|
  json.extract! file_upload, :id, :title
  json.url file_upload_url(file_upload, format: :json)
end
