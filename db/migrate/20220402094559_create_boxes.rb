class CreateBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :boxes do |t|
      t.integer :units_number, null: false # max number of units available for sale and bulk delivery
      t.decimal :bulk_delivery_fee, precision: 8, scale: 2, null: false 
      t.decimal :single_delivery_fee, precision: 8, scale: 2, null: false 
      t.integer :delivery_location, default: 0, null: false
      t.date  :ends_at, null: false # date when campaign ends
      t.date  :closed_at # date when campaign closed (because preorders reached target)
      t.integer :preorders_count, default: 0
      t.integer :status, default: 0
      t.bigint :company_id, null: false
      t.bigint :product_id, null: false
      t.bigint :user_id, null: false

      t.timestamps
    end
  end
end
