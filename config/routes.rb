# frozen_string_literal:true

Rails.application.routes.draw do
  get 'health', to: 'ok_computer/ok_computer#index', defaults: { format: :json }
  resources :nara_casefile
  resources :search_casefiles

  root 'application#index'
  get 'searchcase/search'
  get 'searchcase/display'
  get 'searchcase/full_display'
  get 'searchcase/recordNotFound'
  get 'nara_casefile/index'
  get '*path' => redirect('/')
end
