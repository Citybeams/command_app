class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.references :subject
      t.string "question", :limit => 50
      t.string "answer", :limit => 50
      t.timestamps
    end
    add_index("pages", subject_id)
    add_index("pages", "permalink")
  end
end










