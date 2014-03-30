class RemoveCommandId < ActiveRecord::Migration
  def change


    remove_column :quizzes, :command_id
    add_reference :quizzes, :subject
  end
end
