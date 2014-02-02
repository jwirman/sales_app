class CreateSalesGroups < ActiveRecord::Migration
  def change
    create_table :sales_groups do |t|
      t.string :desc

      t.timestamps
    end
  end
end
