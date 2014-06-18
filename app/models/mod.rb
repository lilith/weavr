class Mod < ActiveRecord::Base
  belongs_to :parent, class_name: "Mod"
  belongs_to :creator, class_name: "Profile"
end
