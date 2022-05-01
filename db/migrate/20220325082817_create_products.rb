class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :kind, default: 0, null: false
      t.integer :prefecture_of_origin, default: 0, null: false
      t.decimal :price, precision: 8, scale: 2, null: false
      t.virtual :price_with_tax, type: :decimal, precision: 8, scale: 2, always_as: 'price * 1.08', stored: true
      t.integer :items_per_unit
      t.decimal :weight_per_unit, precision: 8, scale: 1
      t.bigint :company_id, null: false

      t.timestamps
    end
  end
end