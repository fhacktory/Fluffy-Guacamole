class RemoveGlassAndBeverageTables < ActiveRecord::Migration[5.0]
  def up
  	drop_table :glasses
  	drop_table :beverages
  end


  def down
  	raise ActiveRecord::IrreversibleMigration
  end

end
