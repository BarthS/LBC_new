class Post < ActiveRecord::Base

  belongs_to :user
  belongs_to :cat

  has_many :comments, dependent: :destroy

  has_attached_file :image1, :styles => { :medium => "300x300>", :thumb => "100x100>", :square => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image1, :content_type => /\Aimage\/.*\Z/

  has_attached_file :image2, :styles => { :medium => "300x300>", :thumb => "100x100>", :square => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image2, :content_type => /\Aimage\/.*\Z/

  has_attached_file :image3, :styles => { :medium => "300x300>", :thumb => "100x100>", :square => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image3, :content_type => /\Aimage\/.*\Z/

  has_attached_file :image4, :styles => { :medium => "300x300>", :thumb => "100x100>", :square => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image4, :content_type => /\Aimage\/.*\Z/

  has_attached_file :image5, :styles => { :medium => "300x300>", :thumb => "100x100>", :square => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image5, :content_type => /\Aimage\/.*\Z/

end
