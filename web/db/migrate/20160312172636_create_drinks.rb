class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
	    t.integer :quantity
      t.string :name
      t.integer :proof
      
      t.belongs_to :bender, index: true
      t.timestamps
    end
  end
end
