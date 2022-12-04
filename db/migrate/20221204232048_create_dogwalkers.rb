class CreateDogwalkers < ActiveRecord::Migration[6.1]
  def change
    create_table :dogwalkers do |t|
      t.string :name
      t.integer :years_of_experience
      t.integer :start_time
      t.integer :end_time
    end
  end
end
