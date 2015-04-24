class Listing < ActiveRecord::Base
  attr_accessible :name, :description, :price, :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "200x200>" }, :default_url => "/images/image_not_found.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

