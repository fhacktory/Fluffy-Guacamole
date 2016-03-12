class CreateGlasses < ActiveRecord::Migration[5.0]
  def change
    create_table :glasses do |t|
      t.integer :quantity
      t.belongs_to :beverage, index: true
      t.belongs_to :bender, index: true
      t.timestamps
    end
  end
end
