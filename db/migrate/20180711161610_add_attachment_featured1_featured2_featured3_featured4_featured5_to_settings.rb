class AddAttachmentFeatured1Featured2Featured3Featured4Featured5ToSettings < ActiveRecord::Migration[5.0]
  def self.up
    change_table :settings do |t|
      t.attachment :featured1
      t.attachment :featured2
      t.attachment :featured3
      t.attachment :featured4
      t.attachment :featured5
    end
  end

  def self.down
    remove_attachment :settings, :featured1
    remove_attachment :settings, :featured2
    remove_attachment :settings, :featured3
    remove_attachment :settings, :featured4
    remove_attachment :settings, :featured5
  end
end
