class RemoveOwnerFromGroup < ActiveRecord::Migration
  def up
    remove_column :groups, :owner
  end

  def down
    add_column :groups, :owner_id, :integer
  end
end
