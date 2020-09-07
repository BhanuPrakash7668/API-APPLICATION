class AddAccToApis < ActiveRecord::Migration[6.0]
  def change
    add_reference :apis, :account
  end
end
