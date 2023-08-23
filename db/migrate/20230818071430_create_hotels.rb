class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :prefecture
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
