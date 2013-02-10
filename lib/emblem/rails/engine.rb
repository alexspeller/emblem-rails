require 'emblem/rails/template'

module Emblem
  module Rails
    class Engine < ::Rails::Engine
      initializer "ember_rails.setup", :after => :append_assets_path, :group => :all do |app|
        sprockets = if ::Rails::VERSION::MAJOR == 4
          Sprockets.respond_to?('register_engine') ? Sprockets : app.assets
        else
          app.assets
        end
        sprockets.register_engine '.emblem', Emblem::Rails::Template
      end
    end
  end
end