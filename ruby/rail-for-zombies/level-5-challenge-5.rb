TwitterForZombies::Application.routes.draw do
  get '/zombies/:name', to: 'zombies#index', as: 'graveyard'
  get '/zombies/:name' => 'zombies#index', as: 'graveyard'
end
