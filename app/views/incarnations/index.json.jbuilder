json.array!(@incarnations) do |incarnation|
  json.extract! incarnation, :id, :profile_id, :kind, :title, :name, :gender, :other_gender, :gold, :gems, :hitpoints, :max_hitpoints, :mana, :max_mana, :experience, :level, :turns, :location_id, :coroutine, :display
  json.url incarnation_url(incarnation, format: :json)
end
