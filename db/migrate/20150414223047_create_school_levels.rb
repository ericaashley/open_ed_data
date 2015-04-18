class CreateSchoolLevels < ActiveRecord::Migration
  def change
    create_table :school_levels do |t|
      t.string :nces_id, null: false
      t.string :school_level_name, null: false

      t.timestamps null: false
    end
  end
end
