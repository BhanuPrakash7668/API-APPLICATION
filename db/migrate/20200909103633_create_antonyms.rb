class CreateAntonyms < ActiveRecord::Migration[6.0]
  def change
    create_table :antonyms do |t|
      t.string :word
      t.string :antonym

      t.timestamps
    end
  end
end
