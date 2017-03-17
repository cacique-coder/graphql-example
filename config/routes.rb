Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :users
  post 'queries', controller: 'queries', action: 'search'

  Rails.application.routes.draw do
    if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/queries"
    end
  end
end
