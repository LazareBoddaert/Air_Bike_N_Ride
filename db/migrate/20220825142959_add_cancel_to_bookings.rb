class AddCancelToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :cancelled, :boolean, default: false
  end
end
