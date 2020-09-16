Rails.application.routes.draw do
  get 'searchcase/search'

  get 'searchcase/display'

	get 'searchcase/fullDisplay'

  get 'searchcase/recordNotFound'

  #Seems removable
  get 'nara_casefile/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :nara_casefile
	resources :search_casefiles

   root 'application#hello'

end
