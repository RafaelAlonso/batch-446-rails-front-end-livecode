class CocktailsController < ApplicationController

  # a ideia do index e mostrar todos os cocktails
  def index
    # pega todos os cocktails para passar para a view
    @cocktails = Cocktail.all
  end

  # a ideia do show e mostrar os detalhes de um cocktail
  def show
    # pegar o cocktail especifico pra passar para a view
    @cocktail = Cocktail.find(params[:id])

  end
end
