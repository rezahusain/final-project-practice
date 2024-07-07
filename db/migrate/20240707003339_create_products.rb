class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
