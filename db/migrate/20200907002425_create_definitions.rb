class CreateDefinitions < ActiveRecord::Migration[6.0]
  def change
    create_table :definitions do |t|
      t.string :word
      t.string :definition
      t.string :token

      t.timestamps
    end
  end
end
