class AddHandleNameToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :handle_name, :string
  end
end
