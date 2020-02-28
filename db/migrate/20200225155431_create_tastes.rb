class CreateTastes < ActiveRecord::Migration[6.0]
  def change
    create_table :tastes do |t|
      t.string :name, null: false, index: {unique: true}
      t.string :tastesId, null: false
      t.belongs_to :coffeebags

      t.timestamps
    end
  end
end
