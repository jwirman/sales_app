SalesApp::Application.routes.draw do

  resources :sales_reps
  resources :sales_groups

  #root 'site#index'

end
