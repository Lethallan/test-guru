class AddTimerToTest < ActiveRecord::Migration[6.0]
  def self.up
    add_column :tests, :timer, :integer
  end

  def self.down
    remove_column :tests, :timer
  end
end
