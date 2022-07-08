class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :dog_id
      t.integer :groomer_id
      t.string :appt_start_datetime
      t.string :appt_end_datetime
    end
  end
end