class AddPhotoAndTargetToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :photo_url, :string
    add_column :offers, :target, :string
  end
end
