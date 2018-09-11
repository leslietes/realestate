class AddAttachmentPhotoToProperties < ActiveRecord::Migration[5.0]
  def self.up
    change_table :properties do |t|
      t.attachment :photo
      t.attachment :logo
      t.attachment :location_map
    end
  end

  def self.down
    remove_attachment :properties, :photo
    remove_attachment :properties, :logo
    remove_attachment :properties, :location_map
  end
end
