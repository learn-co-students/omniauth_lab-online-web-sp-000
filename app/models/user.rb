class User < ApplicationRecord

  def self.find_or_create_from_auth_hash(auth_hash)
    self.where(:uid => auth_hash['uid']).first_or_create do |user|
      user.name = auth_hash['info']['name']
      user.uid = auth_hash['uid']
      user.email = auth_hash['info']['email']
    end
  end

end
