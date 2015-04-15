class CreateSchoolTitleOnes < ActiveRecord::Migration
  def change
    create_table :school_title_ones do |t|
      t.string :school_title_one_id, null: false
      t.string :school_title_one_name, null: false

      t.timestamps null: false
    end
  end
end
