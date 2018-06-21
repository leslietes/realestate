class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.string :developer
      t.string :permalink
      t.text   :description
      t.boolean :hidden, :default => false
      t.timestamps
    end
  end
end
