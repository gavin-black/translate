json.array!(@sections) do |section|
  json.extract! section, :id, :scenario, :title, :status
  json.url section_url(section, format: :json)
end
