class ChangeItemsColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :lists, :items
  	add_column :lists, :items, :text, array:true, default: []
  end
end
