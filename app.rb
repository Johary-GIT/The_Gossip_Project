$:.unshift File.expand_path("./../lib", __FILE__)

require 'bundler'
Bundler.require

Router.new.perform 