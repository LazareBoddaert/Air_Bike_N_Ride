class AddRatingToBicycles < ActiveRecord::Migration[7.0]
  def change
    add_column :bicycles, :rating, :integer
  end
end
