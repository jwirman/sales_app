class CreateSalesReps < ActiveRecord::Migration
  def change
    create_table :sales_reps do |t|
      t.references :sales_group, index: true
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
