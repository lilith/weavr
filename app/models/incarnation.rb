class Incarnation < ActiveRecord::Base
  belongs_to :profile
  belongs_to :location

  def self.create_for(profile)
    i = Incarnation.new
    i.profile = profile
    i.max_hitpoints = 100
    i.hitpoints = 100
    i.turns = 25
    i.experience = 0
    i.gold = 0
    i.title = "Firstyear"
    i.name = profile.name
    i.save
    i 

  end
end
=begin
   t.integer  "profile_id"
    t.string   "kind"
    t.string   "title"
    t.string   "name"
    t.string   "gender"
    t.string   "other_gender"
    t.integer  "gold"
    t.integer  "gems"
    t.integer  "hitpoints"
    t.integer  "max_hitpoints"
    t.integer  "mana"
    t.integer  "max_mana"
    t.integer  "experience"
    t.integer  "level"
    t.integer  "turns"
    t.integer  "location_id"
    t.binary   "coroutine"
    t.text     "display
=end