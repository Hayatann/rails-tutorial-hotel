class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.date :check_in_date
      t.date :check_out_date
      t.integer :person_count

      t.timestamps
    end
  end
end
