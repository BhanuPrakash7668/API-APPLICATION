# class PublicController represents words api
class PublicController < ApplicationController
  before_action :authenticate, except: [:homepage]
  before_action :get_word, except: [:homepage, :random]
  def homepage
    @apis = Api.all
  end

  # Select a random word from available words.
  def random
    @word =  Word.order("RANDOM()").first # Get Random Word
    render json: @word.to_json(except: [:created_at, :updated_at, :id]) # Display the word in json format
  end

  # Select word passed in the URL.
  def get_word
    @word = Word.find_by(word: params[:word]) # Get word passed in the URL
  end

  # Select definitions of that particular word we got from the URL.
  def defs
    render json: @word.defs.to_json(except: [:created_at, :updated_at, :id, :word_id]) # Display definition of the word in JSON
  end

  # Select synonys of that particular word we got from the URL.
  def syns
    render json: @word.synonyms.to_json(except: [:created_at, :updated_at, :id, :word_id]) # Display synonyms of the word in JSON
  end

  # Select anotnyms of that particular word we got from the URL.
  def ants
    render json: @word.antonyms.to_json(except: [:created_at, :updated_at, :id, :word_id]) # Display antonyms of the word in JSON
  end

  # Select examples of that particular word we got from the URL.
  def exms
    render json: @word.examples.to_json(except: [:created_at, :updated_at, :id, :word_id]) # Display examples of the word in JSON.
  end

  private

    # Authentication of the API key.
    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        Api.find_by(value: token)
      end
    end
end
