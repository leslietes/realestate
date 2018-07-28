class AddFieldsToSlider < ActiveRecord::Migration[5.0]
  def self.up
    change_table :settings do |t|
      t.string :featured1_link_text
      t.string :featured2_link_text
      t.string :featured3_link_text
      t.string :featured4_link_text
      t.string :featured5_link_text

      t.string :featured1_link_url
      t.string :featured2_link_url
      t.string :featured3_link_url
      t.string :featured4_link_url
      t.string :featured5_link_url      
    end
  end

  def self.down

  end
end
