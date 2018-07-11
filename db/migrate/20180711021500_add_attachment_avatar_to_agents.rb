class AddAttachmentAvatarToAgents < ActiveRecord::Migration[5.0]
  def self.up
    change_table :agents do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :agents, :avatar
  end
end
