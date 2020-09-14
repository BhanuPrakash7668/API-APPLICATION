class RemoveFieldsFromSynonyms < ActiveRecord::Migration[6.0]
  def change
    remove_column :synonyms, :word
  end
end
