class User < ActiveRecord::Base

  has_many :profiles

  belongs_to :last_profile, class_name:"Profile"

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || ""
      end
    end
  end

  def admin?
    email == "nathanael.jones@gmail.com"
  end
end
