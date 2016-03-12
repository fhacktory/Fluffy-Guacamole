class AddUserReferenceToBender < ActiveRecord::Migration[5.0]
  def change
    change_table :benders do |t|
      t.references :user
    end
  end
end
