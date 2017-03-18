require 'test_helper'

class TopivsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topiv = topivs(:one)
  end

  test "should get index" do
    get topivs_url
    assert_response :success
  end

  test "should get new" do
    get new_topiv_url
    assert_response :success
  end

  test "should create topiv" do
    assert_difference('Topiv.count') do
      post topivs_url, params: { topiv: { description: @topiv.description, title: @topiv.title } }
    end

    assert_redirected_to topiv_url(Topiv.last)
  end

  test "should show topiv" do
    get topiv_url(@topiv)
    assert_response :success
  end

  test "should get edit" do
    get edit_topiv_url(@topiv)
    assert_response :success
  end

  test "should update topiv" do
    patch topiv_url(@topiv), params: { topiv: { description: @topiv.description, title: @topiv.title } }
    assert_redirected_to topiv_url(@topiv)
  end

  test "should destroy topiv" do
    assert_difference('Topiv.count', -1) do
      delete topiv_url(@topiv)
    end

    assert_redirected_to topivs_url
  end
end
