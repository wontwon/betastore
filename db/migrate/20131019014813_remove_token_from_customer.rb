class RemoveTokenFromCustomer < ActiveRecord::Migration
  def change
        remove_column :customers, :token, :string
  end
end
