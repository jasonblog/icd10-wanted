require 'test_helper'

class Icd10cmsControllerTest < ActionController::TestCase
  setup do
    @icd10cm = icd10cms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:icd10cms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create icd10cm" do
    assert_difference('Icd10cm.count') do
      post :create, icd10cm: { clinical: @icd10cm.clinical, code: @icd10cm.code, disease_en: @icd10cm.disease_en, disease_synonym: @icd10cm.disease_synonym, disease_zhtw: @icd10cm.disease_zhtw }
    end

    assert_redirected_to icd10cm_path(assigns(:icd10cm))
  end

  test "should show icd10cm" do
    get :show, id: @icd10cm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @icd10cm
    assert_response :success
  end

  test "should update icd10cm" do
    patch :update, id: @icd10cm, icd10cm: { clinical: @icd10cm.clinical, code: @icd10cm.code, disease_en: @icd10cm.disease_en, disease_synonym: @icd10cm.disease_synonym, disease_zhtw: @icd10cm.disease_zhtw }
    assert_redirected_to icd10cm_path(assigns(:icd10cm))
  end

  test "should destroy icd10cm" do
    assert_difference('Icd10cm.count', -1) do
      delete :destroy, id: @icd10cm
    end

    assert_redirected_to icd10cms_path
  end
end
