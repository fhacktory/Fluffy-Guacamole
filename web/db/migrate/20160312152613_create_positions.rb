class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :longitude
      t.string :latitude
      
      t.timestamps
    end
  end
end
