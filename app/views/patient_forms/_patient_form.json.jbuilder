json.extract! patient_form, :id, :image, :body, :severity, :patient_id, :admin_id, :created_at, :updated_at
json.url patient_form_url(patient_form, format: :json)
