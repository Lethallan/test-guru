class AddNullConstraints < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:categories, :topic, false)
    change_column_null(:tests, :title, false)
    change_column_null(:questions, :body, false)
    change_column_null(:answers, :body, false)
    change_column_null(:users, :email, false)
  end
end
