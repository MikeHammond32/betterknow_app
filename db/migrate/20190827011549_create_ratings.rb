class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.text :comment
      t.integer :workease
      t.integer :payment
      t.integer :customer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
