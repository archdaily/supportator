require 'rails/generators'

module Supportator
  module Generators
	  class InstallGenerator < ::Rails::Generators::Base
		source_root File.expand_path("../../../templates", __FILE__)

	    def create_initializer_file
	      copy_file '_browser_validator.html.haml', 'app/views/_browser_validator.html.haml'
	      copy_file 'supportator.en.yml' , 'config/locales/supportator.en.yml'
	      copy_file 'supportator.es.yml' , 'config/locales/supportator.es.yml'
	    end

	  end
  end
end