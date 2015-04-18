class CreateSchoolCharters < ActiveRecord::Migration
  def change
    create_table :school_charters do |t|
      t.string :nces_id, null: false
      t.string :school_charter_name, null: false

      t.timestamps null: false
    end
  end
end
