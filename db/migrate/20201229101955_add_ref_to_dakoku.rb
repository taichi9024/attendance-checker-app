class AddRefToDakoku < ActiveRecord::Migration[5.2]
  def change
    add_reference :dakokus, :staff_member
  end
end
