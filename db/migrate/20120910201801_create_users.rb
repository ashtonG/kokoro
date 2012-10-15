class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :real_name
      t.datetime :birth_date
      t.string :description

      t.timestamps
    end
  end
end
