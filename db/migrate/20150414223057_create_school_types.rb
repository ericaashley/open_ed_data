class CreateSchoolTypes < ActiveRecord::Migration
  def change
    create_table :school_types do |t|
      t.string :school_type_id, null: false
      t.string :school_type_name, null: false

      t.timestamps null: false
    end
  end
end
