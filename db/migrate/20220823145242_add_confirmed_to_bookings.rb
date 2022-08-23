class AddConfirmedToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :confirmed, :boolean, default: false
  end
end
