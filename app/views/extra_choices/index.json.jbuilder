json.array!(@extra_choices) do |extra_choice|
  json.extract! extra_choice, :id, :mod_id, :title, :choice_location_id, :destination_id, :priority
  json.url extra_choice_url(extra_choice, format: :json)
end
