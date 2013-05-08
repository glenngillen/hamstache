$:.unshift File.expand_path(File.dirname(__FILE__) + "/..")
require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  context "rendering a Hamstache template" do

    setup do
    end

    should "return HTML" do
      get :index
      expected_html = <<HTML
<h1>A heading</h1>
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
HTML
      assert_equal expected_html, response.body
    end
  end
end
