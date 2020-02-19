class CreateTemprooms < ActiveRecord::Migration[6.0]
  def change
    create_table :temprooms do |t|
      t.datetime :rec
      t.float :val
      t.string :name
      t.float :valH

      t.timestamps
    end
  end
end
