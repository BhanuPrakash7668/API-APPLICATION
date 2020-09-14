class AddWordIdToDefs < ActiveRecord::Migration[6.0]
  def change
    add_reference :defs, :word,  foreign_key: true
  end
end
