class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :topic

      t.timestamps
    end

    create_table :tests do |t|
      t.string :title
      t.integer :level
      # t.integer :category_id

      t.timestamps
    end

    create_table :questions do |t|
      t.string :body
      # t.integer :test_id

      t.timestamps
    end

    create_table :answers do |t|
      t.string :body
      t.boolean :correct
      # t.integer :question_id

      t.timestamps
    end

    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end

    create_table :statuses do |t|
      t.string :stat

      t.timestamps
    end

    create_table :usertests do |t|
      t.integer :user_id
      t.integer :test_id
      t.integer :status_id

      t.timestamps
    end
  end
end
