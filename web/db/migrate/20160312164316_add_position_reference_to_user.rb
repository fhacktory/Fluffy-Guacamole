class AddPositionReferenceToUser < ActiveRecord::Migration[5.0]
  def change
  	change_table :positions do |t|
  		t.references :user
 	  end
  end
end
