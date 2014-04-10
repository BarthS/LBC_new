class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>", :square => "100x100#"}, :default_url => "/images/avt/default-medium.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
