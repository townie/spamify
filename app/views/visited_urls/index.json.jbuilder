json.array!(@visited_urls) do |visited_url|
  json.extract! visited_url, :id, :url, :page, :duration, :content
  json.url visited_url_url(visited_url, format: :json)
end
