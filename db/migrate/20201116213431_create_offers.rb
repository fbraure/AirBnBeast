class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.date :date  #Issue on the Time_slot. We would need Start Time and End Time
      t.timestamps
    end
  end
end
