class CreateYahoos < ActiveRecord::Migration[6.0]
  def change
    create_table :yahoos do |t|
      t.text :memo
      t.timestamps
    end
  end
end