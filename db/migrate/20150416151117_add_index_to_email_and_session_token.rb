class AddIndexToEmailAndSessionToken < ActiveRecord::Migration
  def change
    add_index :users, [:email, :session_token], unique: true
  end
end
