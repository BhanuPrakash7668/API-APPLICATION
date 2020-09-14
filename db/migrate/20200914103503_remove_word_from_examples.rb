class RemoveWordFromExamples < ActiveRecord::Migration[6.0]
  def change
    remove_column :examples, :word
  end
end
