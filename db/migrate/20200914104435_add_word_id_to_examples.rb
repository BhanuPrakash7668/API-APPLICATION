class AddWordIdToExamples < ActiveRecord::Migration[6.0]
  def change
    add_reference :examples, :word, foreign_key: true
  end
end
