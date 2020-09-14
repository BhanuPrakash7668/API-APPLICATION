class CreateDefs < ActiveRecord::Migration[6.0]
  def change
    create_table :defs do |t|
      t.string :definition

      t.timestamps
    end
  end
end
