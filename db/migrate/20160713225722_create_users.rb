class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :gender
      t.string :email
      t.string :skill_level
      t.string :city
      t.string :more_info

      t.timestamps
    end
  end
end
