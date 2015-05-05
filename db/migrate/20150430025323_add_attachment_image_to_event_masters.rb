class AddAttachmentImageToEventMasters < ActiveRecord::Migration
  def self.up
    change_table :event_masters do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :event_masters, :image
  end
end
