class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :CustomerID
      t.integer :PersonID
      t.integer :StoreID
      t.integer :TerritoryID
      t.text :AccountNumber
      t.text :rowguid
      t.text :ModifiedDate

      t.timestamps
    end
  end
end
