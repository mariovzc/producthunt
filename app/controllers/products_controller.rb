class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit]
  def index
    @products = Product.all    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "El producto fue publicado con éxito"      
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:name, :url, :description)
  end
end