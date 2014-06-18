json.array!(@mods) do |mod|
  json.extract! mod, :id, :pid, :parent_id, :name, :title, :description, :creator_id
  json.url mod_url(mod, format: :json)
end
