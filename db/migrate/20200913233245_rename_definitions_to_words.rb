class RenameDefinitionsToWords < ActiveRecord::Migration[6.0]
  def change
    rename_table :definitions, :words
  end
end
