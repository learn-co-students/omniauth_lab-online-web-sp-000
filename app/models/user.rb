class User < ApplicationRecord
  def self.find_or_create_from_auth_hash(auth)
    where(:uid => auth[:uid], :name => auth[:info][:name]).first_or_initialize.tap do |user|
      user.provider = auth[:provider]
      user.uid = auth[:uid]
      user.name = auth[:info][:name]
      user.email = auth[:info][:email]
      user.save!
    end
  end
end
