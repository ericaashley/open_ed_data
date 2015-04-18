class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city_name, null: false
      t.integer :state_id, null: false

      t.timestamps null: false
    end
  end
end
