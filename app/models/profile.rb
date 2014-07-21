class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :incarnations
  belongs_to :active_incarnation, class_name:"Incarnation"

  def incarnate!

    if !active_incarnation
      if !incarnations || incarnations.empty?
        i = Incarnation.create_for(self)
        active_incarnation = i
        save
      else
        active_incarnation = incarnations.first
        save
      end
      active_incarnation = incarnations.first
    end
  end


end
