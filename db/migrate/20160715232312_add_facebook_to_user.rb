class AddFacebookToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider_token, :string
    add_column :users, :provider_id, :string
    add_column :users, :picture, :text
  end
end
