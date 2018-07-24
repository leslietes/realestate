class AddFeaturedCaption < ActiveRecord::Migration[5.0]
  def self.up
    change_table :settings do |t|
      t.string :featured1_caption
      t.string :featured2_caption
      t.string :featured3_caption
      t.string :featured4_caption
      t.string :featured5_caption
    end
  end

  def self.down
    remove_attachment :settings, :featured1_caption
    remove_attachment :settings, :featured2_caption
    remove_attachment :settings, :featured3_caption
    remove_attachment :settings, :featured4_caption
    remove_attachment :settings, :featured5_caption
  end
end
