Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "cancers#index"
  # Routes for the Symptom resource:
  # CREATE
  get "/symptoms/new", :controller => "symptoms", :action => "new"
  post "/create_symptom", :controller => "symptoms", :action => "create"

  # READ
  get "/symptoms", :controller => "symptoms", :action => "index"
  get "/symptoms/:id", :controller => "symptoms", :action => "show"

  # UPDATE
  get "/symptoms/:id/edit", :controller => "symptoms", :action => "edit"
  post "/update_symptom/:id", :controller => "symptoms", :action => "update"

  # DELETE
  get "/delete_symptom/:id", :controller => "symptoms", :action => "destroy"
  #------------------------------

  # Routes for the Log resource:
  # CREATE
  get "/logs/new", :controller => "logs", :action => "new"
  post "/create_log", :controller => "logs", :action => "create"

  # READ
  get "/logs", :controller => "logs", :action => "index"
  get "/logs/:id", :controller => "logs", :action => "show"

  # UPDATE
  get "/logs/:id/edit", :controller => "logs", :action => "edit"
  post "/update_log/:id", :controller => "logs", :action => "update"

  # DELETE
  get "/delete_log/:id", :controller => "logs", :action => "destroy"
  #------------------------------

  # Routes for the Treatment resource:
  # CREATE
  get "/treatments/new", :controller => "treatments", :action => "new"
  post "/create_treatment", :controller => "treatments", :action => "create"

  # READ
  get "/treatments", :controller => "treatments", :action => "index"
  get "/treatments/:id", :controller => "treatments", :action => "show"

  # UPDATE
  get "/treatments/:id/edit", :controller => "treatments", :action => "edit"
  post "/update_treatment/:id", :controller => "treatments", :action => "update"

  # DELETE
  get "/delete_treatment/:id", :controller => "treatments", :action => "destroy"
  #------------------------------

  # Routes for the Cancer resource:
  # CREATE
  get "/cancers/new", :controller => "cancers", :action => "new"
  post "/create_cancer", :controller => "cancers", :action => "create"

  # READ
  get "/cancers", :controller => "cancers", :action => "index"
  get "/cancers/:id", :controller => "cancers", :action => "show"

  # UPDATE
  get "/cancers/:id/edit", :controller => "cancers", :action => "edit"
  post "/update_cancer/:id", :controller => "cancers", :action => "update"

  # DELETE
  get "/delete_cancer/:id", :controller => "cancers", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
