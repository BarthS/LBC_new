class AddreportToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :report, :integer
  end
end
