class CreateStudentProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :student_projects do |t|
      t.references :student, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.datetime :submission_date
      t.string :priority

      t.timestamps
    end
  end
end
