class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string "command", :limit => 50
      t.timestamps
    end
    add_index("pages", subject_id)
    add_index("pages", "permalink")
  end
end






