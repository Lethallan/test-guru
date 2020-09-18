class RemoveColumnImageFromBadges < ActiveRecord::Migration[6.0]
  def change
    remove_column :badges, :image, :string
  end
end
