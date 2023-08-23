class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.decimal :evaluation
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
