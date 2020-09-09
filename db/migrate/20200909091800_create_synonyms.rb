class CreateSynonyms < ActiveRecord::Migration[6.0]
  def change
    create_table :synonyms do |t|
      t.string :word
      t.string :synonym

      t.timestamps
    end
  end
end
