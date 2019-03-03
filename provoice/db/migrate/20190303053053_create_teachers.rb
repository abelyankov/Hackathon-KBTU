class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.references :teacher_type, null: false
      t.references :expert, null: false
      t.timestamps
    end
  end
end
