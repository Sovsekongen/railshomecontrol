class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :brandId, null: false
      t.string :name, null: false, index: {unique: true}
      t.belongs_to :coffeebags

      t.timestamps
    end
  end
end
