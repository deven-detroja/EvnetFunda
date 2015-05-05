class AddAttachmentBannerImageToEventMasters < ActiveRecord::Migration
  def self.up
    change_table :event_masters do |t|
      t.attachment :banner_image
    end
  end

  def self.down
    remove_attachment :event_masters, :banner_image
  end
end
