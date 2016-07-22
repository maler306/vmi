require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { bar_cod: @product.bar_cod, boxing: @product.boxing, brand: @product.brand, distributor_cod: @product.distributor_cod, groupe: @product.groupe, measure: @product.measure, name: @product.name, organization_id: @product.organization_id, pack: @product.pack, subgroup: @product.subgroup }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { bar_cod: @product.bar_cod, boxing: @product.boxing, brand: @product.brand, distributor_cod: @product.distributor_cod, groupe: @product.groupe, measure: @product.measure, name: @product.name, organization_id: @product.organization_id, pack: @product.pack, subgroup: @product.subgroup }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
