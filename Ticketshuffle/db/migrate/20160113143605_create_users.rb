class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :firstname
      t.string :lastname
      t.integer :tickets


      t.timestamps null: false
    end

  end
end
