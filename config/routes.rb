Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show, :new, :create] do

    # quero criar as rotas do apocalipse de doses
    # tendo o id do cocktail na url
    resources :doses, only: [:new, :create]
  end

  # 7 rotas do apocalipse (CRUD)
  # index
  # show

  # new
  # create

  # edit
  # update

  # destroy

end
