class ExtraChoice < ActiveRecord::Base
  belongs_to :mod
  belongs_to :choice_location, class_name: "Location"
  belongs_to :destination, class_name: "Location"
end
