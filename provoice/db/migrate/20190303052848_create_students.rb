class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.references :user, null: false
      t.references :course
      t.timestamps
    end
  end
end
