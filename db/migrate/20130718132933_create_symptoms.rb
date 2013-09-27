class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
