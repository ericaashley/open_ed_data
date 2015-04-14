class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.references :user, index: true, foreign_key: true
      t.string :provider, null: false, default: "none"
      t.string :uid, null: false, default: ""

      t.timestamps null: false
    end
  end
end
