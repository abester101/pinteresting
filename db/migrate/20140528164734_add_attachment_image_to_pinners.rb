class AddAttachmentImageToPinners < ActiveRecord::Migration
  def self.up
    change_table :pinners do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :pinners, :image
  end
end
