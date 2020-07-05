class AddCategotiesTopicNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:categories, :topic, false)
  end
end
