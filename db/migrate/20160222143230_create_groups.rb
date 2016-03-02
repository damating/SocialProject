class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.integer :owner
      t.boolean :isPublic
      t.date :date
      t.time :time
      t.timestamps null: false
    end
  end
end
