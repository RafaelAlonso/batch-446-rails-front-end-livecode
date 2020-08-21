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

  # a ideia do new e mostrar o form de criacao de um cocktail
  def new
    @cocktail = Cocktail.new
  end

  # a ideia do create e salvar no BD um cocktail com as infos
  # que o user inputou no form do #new
  def create
    @cocktail = Cocktail.new(cocktail_params)

    # se salvarmos no bd
    if @cocktail.save
      # mando ele para o show
      redirect_to cocktail_path(@cocktail.id)
    else
      # senao, mostro o form do new de novo pro user arrumar
      # o que fez de errado
      render :new
    end
  end

  private

  # receita de bolo
  # filtra quais são os campos que podemos deixar passar para
  # a criacao de um cocktail
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
