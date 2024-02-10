class CreateJoinTableStudentCourse < ActiveRecord::Migration[7.1]
  def change
    create_join_table :student, :course
  end
end
