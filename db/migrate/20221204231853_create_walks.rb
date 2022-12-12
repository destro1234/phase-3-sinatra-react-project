class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.integer :length
      t.integer :walker_id
      t.time :start_time
      t.time :end_time
    end
  end
end
