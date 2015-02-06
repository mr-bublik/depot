require 'test_helper'

class ProduktsControllerTest < ActionController::TestCase
  setup do
    @produkt = produkts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produkts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produkt" do
    assert_difference('Produkt.count') do
      post :create, produkt: { description: @produkt.description, image_url: @produkt.image_url, price: @produkt.price, title: @produkt.title }
    end

    assert_redirected_to produkt_path(assigns(:produkt))
  end

  test "should show produkt" do
    get :show, id: @produkt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produkt
    assert_response :success
  end

  test "should update produkt" do
    patch :update, id: @produkt, produkt: { description: @produkt.description, image_url: @produkt.image_url, price: @produkt.price, title: @produkt.title }
    assert_redirected_to produkt_path(assigns(:produkt))
  end

  test "should destroy produkt" do
    assert_difference('Produkt.count', -1) do
      delete :destroy, id: @produkt
    end

    assert_redirected_to produkts_path
  end
end
