require 'spec_helper'

# Yell Rails applicatio class
module Yell
  class Application < Rails::Application
  end
end

describe Yell::Railtie do
  let( :file ) { File.join(fixture_path, 'yell.yml') }

  before do
    mock( Rails.root ).join('config', 'yell.yml') { config_file }

    Yell::Application.initialize!
  end

  it "should have the right railtie name" do
    Yell::Railtie.railtie_name.should == 'yell-rails'
  end

  # it "should set the rails logger for the Yell::Repository" do
  #   Rails.logger.should == Yell['rails']
  # end

end

