json.array!(@annonces) do |annonce|
  json.extract! annonce, :id
  json.url annonce_url(annonce, format: :json)
end
