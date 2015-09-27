class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :owe_to
      t.integer :owed_by
      t.integer :amount

      t.timestamps null: false
    end
  end
end
