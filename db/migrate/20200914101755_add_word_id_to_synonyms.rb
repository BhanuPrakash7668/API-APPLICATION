class AddWordIdToSynonyms < ActiveRecord::Migration[6.0]
  def change
    add_reference :synonyms, :word,  foreign_key: true
  end
end
