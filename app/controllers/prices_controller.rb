class PricesController < ApplicationController
  before_action :set_price, only: [:show, :edit, :update, :destroy]
  before_action :set_product
  before_action :set_breadcrumbs
  authorize_resource

  def index
    @prices = Price.all
  end

  def show
  end

  def new
    @price = Price.new
    @path = [@product, @price]
    add_breadcrumb "добавление цены"
  end

  def edit
    @path = @price
  end

  # POST /prices
  # POST /prices.json
  def create
    @price = @product.prices.new(price_params)

    respond_to do |format|
      if @price.save
        format.html { redirect_to product_path(@product), notice: 'Price was successfully created.' }
        format.json { render :show, status: :created, location: @price }
      else
        format.html { render :new }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prices/1
  # PATCH/PUT /prices/1.json
  def update
    respond_to do |format|
      if @price.update(price_params)
        format.html { redirect_to @price, notice: 'Price was successfully updated.' }
        format.json { render :show, status: :ok, location: @price }
      else
        format.html { render :edit }
        format.json { render json: @price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prices/1
  # DELETE /prices/1.json
  def destroy
    @price.destroy
    respond_to do |format|
      format.html { redirect_to prices_url, notice: 'Price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    def set_product
      if params[:product_id]
        @product = Product.find(params[:product_id])
      else
        @product = @price.product
      end
      @organization = @product.organization
    end
    
    def set_breadcrumbs
      add_breadcrumb "Главная", :root_path
      add_breadcrumb @organization.name, organization_products_path(@organization)
      add_breadcrumb @product.name, product_path(@product)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_params
      params.require(:price).permit(:product_id, :value)
    end
end
