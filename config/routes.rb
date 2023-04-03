Rails.application.routes.draw do
  root "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  
  # get '/articles', to: 'articles#index' # no more need because siya ang root; redundant

  get '/articles/new' => 'articles#new', as: 'new_article' #mas modern yung arrow
  post '/articles' => 'articles#create', as: 'create_article'
  get '/articles/:id', to: 'articles#show', as: 'article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  patch '/articles/:id' => 'articles#update'
  delete '/articles/:id' => 'articles#delete'
  # post '/articles' => 'articles#create', as: 'create_article'
  # get '/articles/:id' => 'articles#show', as: 'article'
  # get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  # # put '/articles/:id' => 'articles#update'
  # patch '/articles/:id' => 'articles#update'
  # delete '/articles/:id' => 'articles#delete'
end
