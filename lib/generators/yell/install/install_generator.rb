# encoding: utf-8

module Yell
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def create_templates
      template 'config/yell.yml', 'config/yell.yml'
    end
  end
end

