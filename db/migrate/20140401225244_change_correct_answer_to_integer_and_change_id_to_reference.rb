class ChangeCorrectAnswerToIntegerAndChangeIdToReference < ActiveRecord::Migration
  def change
      remove_column :answers, :quiz_id
      add_reference :answers, :quiz

  end
end



