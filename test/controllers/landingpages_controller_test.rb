require 'test_helper'

class LandingpagesControllerTest < ActionController::TestCase
  setup do
    @landingpage = landingpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landingpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landingpage" do
    assert_difference('Landingpage.count') do
      post :create, landingpage: { company: @landingpage.company, email: @landingpage.email, name: @landingpage.name }
    end

    assert_redirected_to landingpage_path(assigns(:landingpage))
  end

  test "should show landingpage" do
    get :show, id: @landingpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landingpage
    assert_response :success
  end

  test "should update landingpage" do
    patch :update, id: @landingpage, landingpage: { company: @landingpage.company, email: @landingpage.email, name: @landingpage.name }
    assert_redirected_to landingpage_path(assigns(:landingpage))
  end

  test "should destroy landingpage" do
    assert_difference('Landingpage.count', -1) do
      delete :destroy, id: @landingpage
    end

    assert_redirected_to landingpages_path
  end
end
