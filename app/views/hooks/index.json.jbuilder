json.array!(@hooks) do |hook|
  json.extract! hook, :id, :mod_id, :location_id, :name, :kind
  json.url hook_url(hook, format: :json)
end
