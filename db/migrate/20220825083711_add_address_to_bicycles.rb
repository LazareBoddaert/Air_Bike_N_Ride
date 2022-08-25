class AddAddressToBicycles < ActiveRecord::Migration[7.0]
  def change
    add_column :bicycles, :address, :string
  end
end
