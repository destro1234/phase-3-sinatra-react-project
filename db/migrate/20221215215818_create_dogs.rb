class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :address
      t.string :owner
      # t.text :walks, array: true

    end
  end
end
