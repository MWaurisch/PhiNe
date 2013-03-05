class AddIsmentorToMember < ActiveRecord::Migration
  def change
    add_column :members, :ismentor, :boolean
  end
end
