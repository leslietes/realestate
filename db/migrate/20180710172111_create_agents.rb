class CreateAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :agents do |t|
      t.string "agent_name"
      t.string "mobile_no"
      t.string "email_address"
      
      t.string "linked_in"
      t.string "facebook"
      t.string "twitter"
      t.string "instagram"

      t.timestamps
    end
  end
end
