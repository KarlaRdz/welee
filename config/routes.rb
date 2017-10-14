Rails.application.routes.draw do
  #devise_for :users
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users_admin, :controller => 'users'
 

 devise_for :users,controllers: { registrations: "registrations", sessions: "sessions"}

#devise_for :users,controllers: { sessions: "sessions"}


# se agrega esta linea para que siempre lo mande al login cado no esté resgistrado
authenticated :user do
   root :to => "users#index"
 end
 root :to => redirect("/users/sign_in")
end

###DOCUMENTO
# resources :users_admin, :controller => 'users'
 

# devise_for :users,controllers: { registrations: "registrations", sessions: "sessions"}




# # se agrega esta linea para que siempre lo mande al login cado no esté resgistrado
# authenticated :user do
#    root :to => "users#index"
#  end
#  root :to => redirect("/users/sign_in")