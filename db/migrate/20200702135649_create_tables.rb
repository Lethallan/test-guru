class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :topic

      t.timestamps
    end

    create_table :tests do |t|
      t.string :title
      t.integer :level

      t.timestamps
    end

    create_table :questions do |t|
      t.string :body

      t.timestamps
    end

    create_table :answers do |t|
      t.string :body
      t.boolean :correct

      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
