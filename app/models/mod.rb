class Mod < ActiveRecord::Base
  belongs_to :parent
  belongs_to :creator
end
