class RemovePasswordDigestFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :password_digest
  end
end
