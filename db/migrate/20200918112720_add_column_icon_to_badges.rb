class AddColumnIconToBadges < ActiveRecord::Migration[6.0]
  def self.up
    change_table :badges do |t|
      t.has_attached_file :icon
    end
  end

  def self.down
    drop_attached_file :badges, :icon
  end
end
