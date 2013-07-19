class AddOrderToSymptoms < ActiveRecord::Migration
  def change
    add_column :symptoms, :order, :integer
  end
end
