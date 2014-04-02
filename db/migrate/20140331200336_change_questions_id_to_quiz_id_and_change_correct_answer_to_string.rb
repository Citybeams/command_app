class ChangeQuestionsIdToQuizIdAndChangeCorrectAnswerToString < ActiveRecord::Migration
  def change
    rename_column :answers, :questions_id, :quiz_id

  end

end
