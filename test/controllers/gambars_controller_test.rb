require 'test_helper'

class GambarsControllerTest < ActionController::TestCase
  setup do
    @gambar = gambars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gambars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gambar" do
    assert_difference('Gambar.count') do
      post :create, gambar: { description: @gambar.description, file: @gambar.file, title: @gambar.title }
    end

    assert_redirected_to gambar_path(assigns(:gambar))
  end

  test "should show gambar" do
    get :show, id: @gambar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gambar
    assert_response :success
  end

  test "should update gambar" do
    patch :update, id: @gambar, gambar: { description: @gambar.description, file: @gambar.file, title: @gambar.title }
    assert_redirected_to gambar_path(assigns(:gambar))
  end

  test "should destroy gambar" do
    assert_difference('Gambar.count', -1) do
      delete :destroy, id: @gambar
    end

    assert_redirected_to gambars_path
  end
end
