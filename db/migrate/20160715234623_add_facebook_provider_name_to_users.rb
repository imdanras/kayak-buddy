class AddFacebookProviderNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider_name, :string
  end
end
