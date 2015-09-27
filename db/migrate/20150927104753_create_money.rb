class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.string :owe_to
      t.string :owed_by
      t.integer :amount

      t.timestamps null: false
    end
  end
end
