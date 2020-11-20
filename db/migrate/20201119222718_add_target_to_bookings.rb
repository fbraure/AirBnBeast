class AddTargetToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :target, :string
  end
end
