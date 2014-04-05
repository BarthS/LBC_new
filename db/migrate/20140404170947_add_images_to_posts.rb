class AddImagesToPosts < ActiveRecord::Migration
  def self.up
    add_attachment :posts, :image1
    add_attachment :posts, :image2
    add_attachment :posts, :image3
    add_attachment :posts, :image4
    add_attachment :posts, :image5
  end

  def self.down
    remove_attachment :posts, :image1
    remove_attachment :posts, :image2
    remove_attachment :posts, :image3
    remove_attachment :posts, :image4
    remove_attachment :posts, :image5
  end
end
