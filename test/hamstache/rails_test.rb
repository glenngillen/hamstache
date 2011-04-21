$:.unshift File.expand_path(File.dirname(__FILE__) + "/..")
ENV["RAILS_ENV"] = "test"
require 'test_helper'
require 'rails_helper'

class RailsControllerTest < ActionController::TestCase
  context "rendering views in rails" do

    setup do
      @controller = DemoController.new
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
