require 'rails/generators'

module Supportator
  class InitializerGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def create_initializer_file
      copy_file '_browser_validator.html.haml', 'app/views/_browser_validator.html.haml'
      copy_file 'en_supportator.yml' , 'config/locales/en_supportator.yml'
      copy_file 'es_supportator.yml' , 'config/locales/es_supportator.yml'
    end

  end
end