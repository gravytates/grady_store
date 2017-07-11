class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :full_name
    end
    remove_column :accounts, :name, :string
    add_column :accounts, :user_name, :string
  end
end
