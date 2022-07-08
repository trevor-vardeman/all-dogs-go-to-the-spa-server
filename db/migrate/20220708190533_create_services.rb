class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.integer :appointment_id
      t.timestamps
    end
  end
end
