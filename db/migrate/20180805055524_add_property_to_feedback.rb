class AddPropertyToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :property_id, :integer, default: nil
  end
end
