class ArticulosController < ApplicationController
  def new
  end
  
 def create
  @articulo = Articulo.new(articulo_params)
 
  @articulo.save
  redirect_to @articulo
end
 
private
  def articulo_params
    params.require(:articulo).permit(:titular, :contenido)
  end
end
