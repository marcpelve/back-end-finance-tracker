class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.string :currency
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
