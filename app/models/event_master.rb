class EventMaster < ActiveRecord::Base
  
  has_many :user ,through: :event_bookings

  has_many :event_category_mappings
  has_many :event_ticket_types
  has_many :event_bookings ,through: :event_ticket_types

  accepts_nested_attributes_for  :event_category_mappings,:event_ticket_types
  has_attached_file :image, 
  :styles => {
  :thumb    => ['100x100#',  :jpg, :quality => 70],
  :preview  => ['480x480#',  :jpg, :quality => 70],
  :large    => ['600>',      :jpg, :quality => 70],
  :retina   => ['1200>',     :jpg, :quality => 30]
  },
  :convert_options => {
  :thumb    => '-set colorspace sRGB -strip',
  :preview  => '-set colorspace sRGB -strip',
  :large    => '-set colorspace sRGB -strip',
  :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
  #do_not_validate_attachment_file_type :image
  #validates_attachment :image, :content_type=> { :content_type=> /\Aimage\/.*\Z/ }
  
 def self.latest_events
    order('updated_at asc, title desc')
  end

end
