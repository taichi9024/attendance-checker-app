class CreateStaffMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_members do |t|
      t.string :name, nul: false
      t.string :pass, null: false

      t.timestamps
    end
  end
end
