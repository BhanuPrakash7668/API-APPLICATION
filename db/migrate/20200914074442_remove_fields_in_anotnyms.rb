class RemoveFieldsInAnotnyms < ActiveRecord::Migration[6.0]
  def change
    remove_column :antonyms, :word
  end
end
