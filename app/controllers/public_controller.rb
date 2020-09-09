class PublicController < ApplicationController
before_action :authenticate,  except: [:homepage]
  def homepage
    @apis = Api.all
  end
  #def defs
  #  @definitions = Definition.all
  #  render json: @definitions.to_json
  #end
  def defs
    @definitions = Definition.all
    render json: @definitions.to_json(:except => [:created_at, :updated_at, :token, :id])
  end

  def syns
    @sysnonyms=Synonym.all
    render json: @sysnonyms.to_json(:except => [:created_at, :updated_at, :id])
  end

  def ants
    @antonyms=Antonym.all
    render json: @antonyms.to_json(:except => [:created_at, :updated_at, :id])
  end
  #def cors_set_access_control_headers
  #      headers['Access-Control-Allow-Origin'] = '*'
  #      headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
  #      headers['Access-Control-Request-Method'] = '*'
  #      headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  #end
#response.set_header('Authorization', 'Token 3nl7QISLkQrZgzjTp1vBOwtt')

  private
    def authenticate
      authenticate_or_request_with_http_token do |token, options|

        Api.find_by(value: token)
      end
    end
  ##def authenticate
    #api_key = request.headers['X-Api-Key']
    #@ap = Api.find_by(value: api_key) if api_key
    #unless @ap
    #  head(:unauthorized)
    #  return false

    #end
end
