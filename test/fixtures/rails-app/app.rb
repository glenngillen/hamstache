module Habitually
  class Application < Rails::Application
    config.root = File.dirname(__FILE__)
  end
end
Habitually::Application.initialize!
class DemoController < ActionController::Base
  def index
  end
end
Habitually::Application.routes.draw do
  match '/foo', :to => 'demo#index'
end
