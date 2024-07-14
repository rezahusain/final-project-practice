class CreatePatientForms < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_forms do |t|
      t.string :image
      t.integer :severity
      t.string :hospital_name
      t.integer :patient_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
