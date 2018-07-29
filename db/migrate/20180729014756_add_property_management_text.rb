class AddPropertyManagementText < ActiveRecord::Migration[5.0]
  def change
    add_column :settings, :management_text, :text

    add_column :settings, :topic1, :text
    add_column :settings, :topic2, :text
    add_column :settings, :topic3, :text
    add_column :settings, :topic4, :text
    add_column :settings, :topic5, :text

    add_column :settings, :answer1, :text
    add_column :settings, :answer2, :text
    add_column :settings, :answer3, :text
    add_column :settings, :answer4, :text
    add_column :settings, :answer5, :text

    add_column :settings, :show_topic1, :boolean, default: true
    add_column :settings, :show_topic2, :boolean, default: true
    add_column :settings, :show_topic3, :boolean, default: true
    add_column :settings, :show_topic4, :boolean, default: true
    add_column :settings, :show_topic5, :boolean, default: true
  end
end
