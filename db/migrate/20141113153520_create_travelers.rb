class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.string :state
      t.string :city
      t.integer :duration_of_travel
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
