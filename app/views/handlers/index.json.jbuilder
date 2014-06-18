json.array!(@handlers) do |handler|
  json.extract! handler, :id, :mod_id, :hook_id, :code, :priority
  json.url handler_url(handler, format: :json)
end
