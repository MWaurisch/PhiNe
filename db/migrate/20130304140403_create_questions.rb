class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :message

      t.timestamps
    end
  end
end
