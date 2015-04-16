class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :destination

      t.timestamps null: false
    end
  end
end
