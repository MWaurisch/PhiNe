class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :nickname
      t.string :status

      t.timestamps
    end
  end
end
