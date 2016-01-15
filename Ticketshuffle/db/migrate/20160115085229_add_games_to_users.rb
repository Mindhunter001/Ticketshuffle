class AddGamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :games, :integer, :default => 0
    change_column :users, :tickets, :integer, :default => 0
  end
end
