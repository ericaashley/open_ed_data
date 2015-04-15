class CreateSchoolMagnets < ActiveRecord::Migration
  def change
    create_table :school_magnets do |t|
      t.string :school_magnet_id, null: false
      t.string :school_magnet_name, null: false

      t.timestamps null: false
    end
  end
end
