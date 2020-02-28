class CreateCoffebags < ActiveRecord::Migration[6.0]
  def change
    create_table :coffeebags do |t|
      t.string :bagId
      t.string :name
      t.float :price
      t.integer :rating
      t.string :amount
      t.string :filter
      t.integer :size
      t.integer :timesBought
      t.has_many :tastes
      t.has_many :brands
      t.has_many :countries

      t.timestamps
    end
  end
end
