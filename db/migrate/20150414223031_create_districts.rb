class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :nces_district_id, null: false
      t.string :district_name, null: false
      t.integer :state_id, null: false

      t.timestamps null: false
    end
  end
end
