class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :group
      t.text :info

      t.timestamps
    end
  end
end
