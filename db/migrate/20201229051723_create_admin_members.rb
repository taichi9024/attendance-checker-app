class CreateAdminMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_members do |t|
      t.string :name, null: false
      t.string :pass, null: false

      t.timestamps
    end
  end
end
