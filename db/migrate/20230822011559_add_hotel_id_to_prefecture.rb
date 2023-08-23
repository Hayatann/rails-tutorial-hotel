class AddHotelIdToPrefecture < ActiveRecord::Migration[6.1]
  def change
    add_column :prefectures, :hotel_id, :integer
  end
end
