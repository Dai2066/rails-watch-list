class ListsController < ApplicationController
  
  # mostrar todas las listas get
  def index
    @lists = List.all
  end

  # mostrar cada lista
  def show
    @list = List.find(params[:id])
  end

  # crear lista - mostrar formulario
  def new
    @list = List.new
  end

  # crear lista post
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else 
      render :new
    end    
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end


