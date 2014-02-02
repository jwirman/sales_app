SalesApp::Application.routes.draw do

  resources :locations
  resources :sales_reps
  resources :sales_groups

  root 'site#index'

end
