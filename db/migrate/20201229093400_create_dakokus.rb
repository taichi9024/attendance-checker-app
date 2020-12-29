class CreateDakokus < ActiveRecord::Migration[5.2]
  def change
    create_table :dakokus do |t|
      t.boolean :hairu
      t.boolean :deru

      t.timestamps
    end
  end
end
