class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :title
      t.string :teacher


      t.timestamps null: false
    end
  end
end
