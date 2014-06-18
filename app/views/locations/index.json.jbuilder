json.array!(@locations) do |location|
  json.extract! location, :id, :mod_id, :name, :title, :text, :choices, :choices_expandable, :code
  json.url location_url(location, format: :json)
end
