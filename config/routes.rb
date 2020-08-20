Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show]
  # 7 rotas do apocalipse (CRUD)
  # index
  # show

  # new
  # create

  # edit
  # update

  # destroy

end
