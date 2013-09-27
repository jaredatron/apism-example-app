ENV['RACK_ENV'] ||= 'development'
ENV['BUNDLER_GEMFILE'] = File.expand_path('../Gemfile')
require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, ENV['RACK_ENV'])

class ApismExampleApp < Apism::Application

  # add_load_path :resources, :models

  resource :users do

    all do
      ['all','users']
    end

    read do
      {hi: 'there'}
    end

  end

end
