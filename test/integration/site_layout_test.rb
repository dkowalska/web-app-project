require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/index'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", movies_path, count: 2
    assert_select "a[href=?]", tv_shows_path, count: 2
    assert_select "a[href=?]", ebooks_path, count: 2
    assert_select "a[href=?]", mags_path, count: 2
  end
end
