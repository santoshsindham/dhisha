class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.string :cause
      t.decimal :amount
      t.string :currency
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
