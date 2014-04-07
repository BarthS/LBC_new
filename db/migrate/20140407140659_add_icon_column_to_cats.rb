class AddIconColumnToCats < ActiveRecord::Migration
  def change
    add_column :cats, :icon, :string
  end
end
