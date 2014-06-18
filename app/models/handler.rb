class Handler < ActiveRecord::Base
  belongs_to :mod
  belongs_to :hook
end
