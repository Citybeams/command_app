class ChangeQuestionsIdToQuizIdAndChangeCorrectAnswerToString < ActiveRecord::Migration
  def change
    rename_column :answers, :questions_id, :quiz_id
    change_table :quizzes do |t|
      t.change :correct_answer, :string
    end
  end

end
