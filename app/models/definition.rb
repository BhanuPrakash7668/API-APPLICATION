require 'securerandom'
class Definition < ApplicationRecord
   has_many :apis
#response.set_header('Authorization', 'Token 3nl7QISLkQrZgzjTp1vBOwtt')
   #Rails.logger @auth_token
  # @apis= Api.all

   #before_create :set_auth_token
   #private
   #def set_auth_token
    # @apis.each do |api|
    #   self.token = api.value
     #end
   #end
end
