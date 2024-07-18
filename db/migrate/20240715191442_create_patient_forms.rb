class CreatePatientForms < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_forms do |t|
      t.string :image
      t.text :body
      t.integer :severity
      t.references :patient, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
