class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :cost
      t.string :category

      t.timestamps null: false
    end
  end
end
