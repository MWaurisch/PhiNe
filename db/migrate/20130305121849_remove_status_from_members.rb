class RemoveStatusFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :status
  end

  def down
    add_column :members, :status, :boolean
  end
end
