class AddAttachmentPhotoToSettings < ActiveRecord::Migration[5.0]
  def self.up
    change_table :settings do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :settings, :photo
  end
end
