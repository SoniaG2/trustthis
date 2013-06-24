class AddAttachmentImageToCacs < ActiveRecord::Migration
  def self.up
    change_table :cacs do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :cacs, :image
  end
end
