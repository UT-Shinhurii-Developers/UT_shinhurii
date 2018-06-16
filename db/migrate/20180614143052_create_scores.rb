class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.string :user_name
      t.string :class_name
      t.string :type
      t.integer :score
      t.float :weight
      t.integer :credit

      t.timestamps
    end
  end
end
