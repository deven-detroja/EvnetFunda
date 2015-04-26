class EventMaster < ActiveRecord::Base
  
  belongs_to :user
  has_many :event_category_mappings
  accepts_nested_attributes_for  :event_category_mappings 
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  #do_not_validate_attachment_file_type :image
  #validates_attachment :image, :content_type=> { :content_type=> /\Aimage\/.*\Z/ }
  
end
