class AddUserRefToApiKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :api_keys, :user, foreign_key: true
  end
end
