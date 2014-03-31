class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.references :command
      t.string "quiz_question", :limit => 50
      t.string "quiz_answer", :limit => 50
      t.timestamps
    end
  end
end
