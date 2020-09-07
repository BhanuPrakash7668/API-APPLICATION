require 'securerandom'
class Definition < ApplicationRecord
   has_many :apis
  
  # @apis= Api.all

   #before_create :set_auth_token
   #private
   #def set_auth_token
    # @apis.each do |api|
    #   self.token = api.value
     #end
   #end
end
