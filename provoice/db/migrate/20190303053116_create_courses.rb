class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.string :description

      t.references :teacher, null: false

      t.datetime :starts_at
      t.datetime :ends_at
      t.datetime :completed_at
      t.timestamps
    end
  end
end
