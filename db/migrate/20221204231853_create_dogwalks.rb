class CreateDogwalks < ActiveRecord::Migration[6.1]
  def change
    create_table :dogwalks do |t|
      t.integer :length
      t.integer :dogwalker_id
      t.time :start_time
      t.time :end_time
    end
  end
end
