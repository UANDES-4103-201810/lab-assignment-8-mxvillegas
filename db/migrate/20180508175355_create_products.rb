class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :weight
      t.integer :price
      t.integer :user_id
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
