class JacketsController < ApplicationController
  def index
    @jackets = Jacket.all
  end

  def show
    @jackets = Jacket.find(params[:id])
  end

  def new
    @jacket = Jacket.new
  end

  def create
    @jacket = Jacket.create(params.require(:jacket).permit(:name, :price, :size))
    if @jacket.save
      redirect_to jackets_path
    else
      render 'new'
    end
  end

  def edit
    @jacket = Jacket.find(params[:id])
  end

  def update
    @jacket = Jacket.find(params[:id])
    if @jacket.update_attributes(params.require(:jacket).permit(:name, :price, :size))
      redirect_to jackets_path
    else
      render 'edit'
    end
  end
  def destroy
    @jacket = Jacket.find(params[:id])
    @jacket.destroy
    redirect_to jackets_path
  end
end
