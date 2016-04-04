class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :content
      t.integer :user_id
    

      t.timestamps null: false
    end
  end
end
