class CreateUserLocalisations < ActiveRecord::Migration
  def change
    create_table :user_localisations do |t|
      t.decimal :latitute
      t.decimal :longitute
      t.time :time
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
