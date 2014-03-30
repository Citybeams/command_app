class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :questions
      t.string "answer_text", :limit => 140
    end
  end
end
