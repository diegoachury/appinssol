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
      post :create, product: { codigo_externo: @product.codigo_externo, codigo_interno: @product.codigo_interno, color: @product.color, descripcion: @product.descripcion, ficha_produccion: @product.ficha_produccion, ficha_tecnica: @product.ficha_tecnica, marca: @product.marca, nombre: @product.nombre, referencia_marca: @product.referencia_marca, talla: @product.talla }
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
    put :update, id: @product, product: { codigo_externo: @product.codigo_externo, codigo_interno: @product.codigo_interno, color: @product.color, descripcion: @product.descripcion, ficha_produccion: @product.ficha_produccion, ficha_tecnica: @product.ficha_tecnica, marca: @product.marca, nombre: @product.nombre, referencia_marca: @product.referencia_marca, talla: @product.talla }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
