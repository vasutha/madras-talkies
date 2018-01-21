class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :integer
      t.text :comments

      t.timestamps null: false
    end
  end
end
