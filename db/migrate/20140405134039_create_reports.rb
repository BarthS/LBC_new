class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :text
      t.string :link

      t.timestamps
    end
  end
end
