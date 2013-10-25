class AddTokenToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :token, :string
  end
end
