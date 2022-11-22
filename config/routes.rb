Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "wiki", to: "wiki#index"
  get "wiki/new", to: "wiki#new"

  get "wiki/:id", to: "wiki#show", as: "wikis"
  post "wiki", to: "wiki#create", as: "create_wiki"

  get "/wiki/:id/edit", to: "wiki#edit", as: "edit_article"
  patch "wiki/:id", to: "wiki#update", as: "update_wiki"

  delete "/wiki/:id", to: "wiki#destroy", as: "delete_wiki"
end
