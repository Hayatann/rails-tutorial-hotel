class CreateHotelsPrefectures < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels_prefectures do |t|
      t.references :hotel, null: false, foreign_key: true
      t.references :prefecture, null: false, foreign_key: true

      t.timestamps
    end

    add_index :hotels_prefectures, [:hotel_id, :prefecture_id], unique: true
  end
end
