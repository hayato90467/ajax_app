class CreateYahoos < ActiveRecord::Migration[6.0]
  def change
    create_table :yahoos do |t|
      t.text :content
      t.boolean :checked
      t.timestamps
    end
  end
end
