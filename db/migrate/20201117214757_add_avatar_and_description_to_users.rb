class AddAvatarAndDescriptionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar_url, :string
    add_column :users, :description, :string
  end
end
