class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false

      t.index :first_name
      t.index :last_name
      t.index :email, :unique => true

      t.timestamps null: false
    end
  end
end
