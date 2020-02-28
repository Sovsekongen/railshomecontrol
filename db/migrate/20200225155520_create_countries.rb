class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :countryId, null: false
      t.string :name, null: false, index: {unique: true}
      t.float :latitude, null:false
      t.float :longitude, null:false
      t.belongs_to :coffeebags

      t.timestamps
    end
  end
end
