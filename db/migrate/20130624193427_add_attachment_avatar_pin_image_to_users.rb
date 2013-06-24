class AddAttachmentAvatarPinImageToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :avatar
      t.attachment :pin
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :users, :avatar
    drop_attached_file :users, :pin
    drop_attached_file :users, :image
  end
end
