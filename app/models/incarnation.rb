class Incarnation < ActiveRecord::Base
  belongs_to :profile
  belongs_to :location
end
