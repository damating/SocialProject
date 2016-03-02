class CreateGroupLocalisations < ActiveRecord::Migration
  def change
    create_table :group_localisations do |t|
      t.string :place_name
      t.decimal :latitute
      t.decimal :longitute
      t.string :city
      t.string :street_address
      t.references :group, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
