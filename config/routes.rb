Rails.application.routes.draw do

  # criar 4 das 7 rotas do apocalipse para os cocktails
  resources :cocktails, only: [:index, :show, :new, :create] do

    # quero criar 2 das 7 rotas do apocalipse para doses
    # tendo o id do cocktail (daquela dose) na url
    resources :doses, only: [:new, :create]
  end

  # ========= 7 rotas do apocalipse (CRUD) ==========
  # (CREATE)
  # index
  # show

  # (READ)
  # new
  # create

  # (UPDATE)
  # edit
  # update

  # (DELETE)
  # destroy

end
