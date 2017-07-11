class Create < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name
      t.timestamps
    end

    create_table :orders do |t|
      t.integer :account_id
      t.string :status
      t.integer :total_price
      t.timestamps
    end

    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.timestamps
    end

    create_table :products do |t|
      t.decimal :price
      t.string :name
      t.timestamps
    end
  end
end
