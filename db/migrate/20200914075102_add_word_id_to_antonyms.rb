class AddWordIdToAntonyms < ActiveRecord::Migration[6.0]
  def change
    add_reference :antonyms, :word,  foreign_key: true
  end
end
