class User < ApplicationRecord
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :validatable,         
         :omniauthable, omniauth_providers: [:google_oauth2, :oktaoauth]

  devise :trackable, :timeoutable, :timeout_in => 10.minutes

   def self.from_omniauth(response)
    user = User.where(email: response[:info]['email']).first

    User.find_or_create_by(email: response[:info][:email]) do |u|
      u.first_name = response[:info][:first_name],
      u.last_name = response[:info][:last_name],
      u.password = Devise.friendly_token[0,20],
      u.uid = response[:uid],
      u.provider = response[:provider]
    end
  end
end
