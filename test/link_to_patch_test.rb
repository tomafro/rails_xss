require 'test_helper'
require 'action_controller'
require 'action_view'
require 'action_view/test_case'
require 'link_to_patch'

class LinkToPatchTest < ActionView::TestCase
  tests ActionView::Helpers::UrlHelper

  def setup
    @controller = Class.new do
      attr_accessor :url, :request
      def url_for(options)
        url
      end
    end
    @controller = @controller.new
    @controller.url = "http://www.example.com"
  end
  
  test "link_to escapes unsafe names" do
    assert_equal "<a href=\"http://www.example.com\">&lt;script&gt;</a>", link_to("<script>")
  end
end
