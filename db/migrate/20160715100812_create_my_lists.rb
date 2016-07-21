class CreateMyLists < ActiveRecord::Migration[5.0]
  def change
    create_table :my_lists do |t|
      t.string :place_id
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
