Rails.application.routes.draw do
  resources :patient_forms
  root to: "patient_forms#show"
  devise_for :admins
  devise_for :patients
  
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
