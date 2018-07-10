class AddAttachmentImageToDevelopers < ActiveRecord::Migration[5.0]
  def self.up
    change_table :developers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :developers, :image
  end
end
