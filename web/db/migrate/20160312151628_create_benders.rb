class CreateBenders < ActiveRecord::Migration[5.0]
  def change
    create_table :benders do |t|
      t.started_at
      t.ended_at
      t.timestamps
    end
  end
end
