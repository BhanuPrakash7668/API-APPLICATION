class DefinitionSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :word, :token
end
