class RemovePatientIdIdNameFromPatientForms < ActiveRecord::Migration[7.1]
  def change
    remove_column :patient_forms, :patient_id
  end
end
