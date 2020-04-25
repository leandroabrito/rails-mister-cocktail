Rails.application.routes.draw do

# A user can see the list of cocktails
# A user can see the details of a given cocktail, with the dose needed for each ingredient
# A user can create a new cocktail
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end

end
