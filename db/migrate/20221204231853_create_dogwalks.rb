class CreateDogwalks < ActiveRecord::Migration[6.1]
  def change
    create_table :dogwalks do |t|
      t.integer :length
      t.integer :dog_id
      t.integer :dogwalker_id
    end
  end
end
