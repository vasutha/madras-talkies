class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, default: 0
      t.text :comments

      t.timestamps null: false
    end
  end
end
