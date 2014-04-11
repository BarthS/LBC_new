class AddStatusColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :val, :boolean, :default => false
  end
end
