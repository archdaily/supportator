module Supportator
  require 'rails'
  class Engine < ::Rails::Engine
  	config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  end
end