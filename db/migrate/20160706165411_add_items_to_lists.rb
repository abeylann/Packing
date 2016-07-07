class AddItemsToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, t.string :items, :string
  end
end
