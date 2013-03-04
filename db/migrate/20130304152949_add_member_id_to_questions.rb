class AddMemberIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :member_id, :integer
  end
end
