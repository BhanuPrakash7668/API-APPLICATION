class PublicController < ApplicationController
before_action :authenticate, except: [:homepage]
  def homepage
    @apis = Api.all
  end
  def defs
    @definitions = Definition.all
    render json: @definitions.to_json
  end
  def show
    @definitions = Definition.all
    render json: @definitions.to_json(:except => [:created_at, :updated_at, :token, :id])
  end

  private
    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        Definition.find_by(token: token)
      end
    end
end
