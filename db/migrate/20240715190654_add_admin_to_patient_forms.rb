class AddAdminToPatientForms < ActiveRecord::Migration[7.1]
  def change
    add_reference :patient_forms, :admin, null: false, foreign_key: true
  end
end
