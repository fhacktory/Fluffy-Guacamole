class CreateBenders < ActiveRecord::Migration[5.0]
  def change
    create_table :benders do |t|
      t.datetime :started_at
      t.datetime :ended_at
      t.timestamps
    end
  end
end
