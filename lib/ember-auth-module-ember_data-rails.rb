require 'rails'
require 'ember/auth/module/ember_data/source'
require 'ember/auth/module/ember_data/rails/version'
require 'ember/auth/module/ember_data/rails/engine'

module Ember
  module Auth
    module Module
      module EmberData
        module Rails
          class Railtie < ::Rails::Railtie
            initializer 'ember-auth.module.ember-data.setup-vendor', :group => :all do |app|
              app.assets.append_path \
                File.expand_path('..', ::Ember::Auth::Module::EmberData::Source.bundled_path)
            end
          end
        end
      end
    end
  end
end
