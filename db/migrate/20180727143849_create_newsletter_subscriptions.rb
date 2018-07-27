class CreateNewsletterSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :newsletter_subscriptions do |t|
      t.string :email
      t.string :name
      t.boolean :active, default: true
      t.text    :message
      t.timestamps
    end
  end
end
