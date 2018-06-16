class ChangeScoreColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :scores, :type, :string
    add_column :scores, :class_type, :string
  end
end
