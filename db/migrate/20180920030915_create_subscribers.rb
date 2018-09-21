class CreateSubscribers < ActiveRecord::Migration[5.0]
  def change
    create_table :subscribers do |t|
      t.string :email
      t.string :name
      t.datetime :subscribed_at
      t.string :unsubscribe_token
    end
    add_index :subscribers, :unsubscribe_token
    add_index :subscribers, :email
  end
end
