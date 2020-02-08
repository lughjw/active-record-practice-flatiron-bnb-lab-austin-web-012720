class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description

      t.integer :guest_id
      t.integer :reservation_id
      t.timestamps
    end
  end
end
