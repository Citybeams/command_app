class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string "subject", :limit => 50
      t.timestamps
    end
  end
end






