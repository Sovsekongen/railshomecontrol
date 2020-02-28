class RenameCoffebagToCoffeebag < ActiveRecord::Migration[6.0]
  def change
    rename_table :coffebags, :coffeebags
  end
end
