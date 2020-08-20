class CocktailsController < ApplicationController

  # a ideia do index e mostrar todos os cocktails
  def index
    # pega todos os cocktails para passar para a view
    @cocktails = Cocktail.all
  end
end
