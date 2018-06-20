class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :year, :integer
    add_column :users, :dep1, :string
    add_column :users, :dep2, :string
    add_column :users, :dep3, :string
  end
end
