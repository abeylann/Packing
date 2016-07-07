class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.belongs_to :place      
      t.string :items
      t.timestamps
    end
  end
end
