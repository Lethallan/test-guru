class AddTestsTitleNullConstraint < ActiveRecord::Migration[6.0]
  # def change
  # end

  def up
  #накат миграции
  change_column_null(:tests, :title, false)
  end

  def down
    #откат миграции
    change_column_null(:tests, :title, true)
  end
end
