Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats, :jobs
  root 'static_pages#home'
  get 'jobs/mark_as_complete/:id', to: 'jobs#mark_as_complete', as: 'job_complete'
end
