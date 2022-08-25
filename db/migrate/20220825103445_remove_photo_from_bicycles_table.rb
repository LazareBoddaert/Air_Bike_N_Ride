class RemovePhotoFromBicyclesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :bicycles, :photo, :string
  end
end
