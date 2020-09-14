class RemoveFieldsInDefinitions < ActiveRecord::Migration[6.0]
  def change
    remove_column :definitions, :definition
    remove_column :definitions, :token
  end
end
