class Word < ApplicationRecord
  has_many :defs, dependent: :destroy
  has_many :antonyms, dependent: :destroy
  has_many :synonyms, dependent: :destroy
  has_many :examples, dependent: :destroy
end
