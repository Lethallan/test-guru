class AddUsersEMailNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:users, :e_mail, false)
  end
end
