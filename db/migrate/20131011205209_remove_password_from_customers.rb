class RemovePasswordFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :password, :string
  end
end
