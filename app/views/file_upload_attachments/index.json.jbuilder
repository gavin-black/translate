json.array!(@file_upload_attachments) do |file_upload_attachment|
  json.extract! file_upload_attachment, :id, :file_upload_id, :scenario
  json.url file_upload_attachment_url(file_upload_attachment, format: :json)
end
