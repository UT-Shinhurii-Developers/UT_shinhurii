class AddKaruiColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :karui, :string
  end
end
