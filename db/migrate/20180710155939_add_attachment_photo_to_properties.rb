class AddAttachmentPhotoToProperties < ActiveRecord::Migration[5.0]
  def self.up
    change_table :properties do |t|
      t.attachment :photo
      t.attachment :logo
      t.attachment :location_map
      t.attachment :studio_layout
      t.attachment :one_bedroom_layout
      t.attachment :two_bedroom_layout
      t.attachment :three_bedroom_layout
      t.attachment :penthouse_layout
      t.attachment :loft_layout
    end
  end

  def self.down
    remove_attachment :properties, :photo
    remove_attachment :properties, :logo
    remove_attachment :properties, :location_map
    remove_attachment :properties, :studio_layout
    remove_attachment :properties, :one_bedroom_layout
    remove_attachment :properties, :two_bedroom_layout
    remove_attachment :properties, :three_bedroom_layout
    remove_attachment :properties, :penthouse_layout
    remove_attachment :properties, :loft_layout
  end
end
