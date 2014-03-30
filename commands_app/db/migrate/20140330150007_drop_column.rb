class DropColumn < ActiveRecord::Migration
  def change
    remove_column :quizzes, :quiz_answer
    add_column :quizzes, :correct_answer, :integer, :null => false
  end
end
