class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :ansi_id, null: false
      t.string :state_name, null: false
      t.string :state_abbrev, null: false

      t.timestamps null: false
    end
  end
end
