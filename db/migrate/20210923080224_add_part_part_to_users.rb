class AddPartPartToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :story, :string
    add_column :users, :address, :string
  end
end
