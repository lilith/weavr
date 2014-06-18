class ExtraChoice < ActiveRecord::Base
  belongs_to :mod
  belongs_to :choice_location
  belongs_to :destination
end
