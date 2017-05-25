class AddFirstnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :address, :text
    add_column :users, :contact_number, :string
    add_column :users, :gender, :string
  end
end
