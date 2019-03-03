class CreateTeacherTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_types do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
