require 'test_helper'

class ConvitesControllerTest < ActionController::TestCase
  setup do
    @convite = convites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convite" do
    assert_difference('Convite.count') do
      post :create, convite: { anfitriao: @convite.anfitriao, anos: @convite.anos, dataevento: @convite.dataevento, horafinal: @convite.horafinal, horainicio: @convite.horainicio }
    end

    assert_redirected_to convite_path(assigns(:convite))
  end

  test "should show convite" do
    get :show, id: @convite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convite
    assert_response :success
  end

  test "should update convite" do
    patch :update, id: @convite, convite: { anfitriao: @convite.anfitriao, anos: @convite.anos, dataevento: @convite.dataevento, horafinal: @convite.horafinal, horainicio: @convite.horainicio }
    assert_redirected_to convite_path(assigns(:convite))
  end

  test "should destroy convite" do
    assert_difference('Convite.count', -1) do
      delete :destroy, id: @convite
    end

    assert_redirected_to convites_path
  end
end
