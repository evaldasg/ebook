Rails.application.routes.draw do



  resources :groups
  resources :studentsgroups


  resources :disciplines, except: :show

  resources :teachers

  resources :students do
    resources :studentsdisciplines
    resources :studentsgroups
  end


end
