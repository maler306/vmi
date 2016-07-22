class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_organization
  #before_action :set_price
  before_action :set_breadcrumbs
  include CurrentCart 
  before_action :set_cart

  authorize_resource

  def index
    @products = @organization.products
    @search =  @products.search(params[:q])
    @products = @search.result.includes(:prices)
    @search.build_condition
    add_breadcrumb "Товары", organization_products_path(@organization)
    #add_breadcrumb "результаты поиска"
    
  end

  def show
    # @product = Product.find(params[:id])
    # @organization = Organization.find(params[:organization_id])
    add_breadcrumb @product.name, product_path(@product)
  end

  def new
    @product = Product.new
    @path = [@organization, @product]
    
  end

  def edit
     @path = @product
  end

  def create
    @product = @organization.products.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_path(@product), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_path(@product), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to organization_products_path(@organization), notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end
    
    def set_organization
      if params[:organization_id]
        @organization = Organization.find(params[:organization_id])
      else
        @organization = @product.organization
      end
    end
    

    def set_breadcrumbs
      add_breadcrumb "Главная", :root_path
      add_breadcrumb @organization.name, organization_products_path(@organization)
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:distributor_cod, :bar_cod, :name, :subgroup, :groupe, :brand, :pack, :measure, :boxing, :organization_id, :avatar)
    end
end
