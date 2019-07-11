class User < ActiveRecord::Base
    #has_secure_password

    def self.find_or_create_by_omniauth(auth)
        self.where(:uid => auth['uid']).first_or_create do |user|
            user.name = auth['info']['name']
            user.email = auth['info']['email']
            #user.password = SecureRandom.hex

        end
    end
end