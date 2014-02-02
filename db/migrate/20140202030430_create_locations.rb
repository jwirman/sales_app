class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :sales_rep, index: true
      t.string :name
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
