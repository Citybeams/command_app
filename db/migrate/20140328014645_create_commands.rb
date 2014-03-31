class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.references :subject
      t.string "command_question", :limit => 50
      t.string "command_answer", :limit => 50
      t.timestamps
    end
  end
end










