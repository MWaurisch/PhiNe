class AddIsAdminToMembers < ActiveRecord::Migration
  def change
    add_column :members, :isadmin, :boolean
  end
end
