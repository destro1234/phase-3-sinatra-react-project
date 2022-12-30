class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.string :dogwalker
      t.string :starttime
      t.string :length
      t.integer :dog_id
    end
  end
end
