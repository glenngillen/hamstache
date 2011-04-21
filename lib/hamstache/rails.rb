require 'rails'
require 'action_view'
module Hamstache
  class Handler < ActionView::Template::Handler
    include ActionView::Template::Handlers::Compilable
    self.default_format = :hamstache

    def compile(template)
      "Mustache.render(
          Haml::Engine.new('#{template.source}').render,
          #{template.virtual_path.camelize}.new)"
    end
  end
end

ActionView::Template.register_template_handler(:hamstache, Hamstache::Handler)

$LOAD_PATH << "#{Rails.root}/app/hamstaches"
begin
  Rails.configuration.load_paths += %W{
      #{Rails.root}/app/hamstaches
    }
rescue
end

