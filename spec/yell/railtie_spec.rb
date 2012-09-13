require 'spec_helper'

describe Yell::Railtie do
  let( :app ) { FakeApp.new }
  let( :railtie ) { Yell::Railtie.send :new }

  it "should have the right railtie name" do
    Yell::Railtie.railtie_name.should == 'yell-rails'
  end

  context :initialized do
    let( :app ) do
      OpenStruct.new(
        :config => OpenStruct.new( :paths => {'log' => [path]} )
      )
    end

    let( :path ) { 'path/to/config' }
    let( :file ) { mock }

    before do
      mock( ::File ).exist?( File.dirname(path) ) { true } # do not create log directory

      mock( Rails.root ).join('config', 'yell.yml') { file } # mock config file
      mock( file ).file? { false } # do not load the config file

      railtie.run_initializers(:all, app )
    end

    it "should add :rails to the Yell::Repository" do
      Yell['rails'].should be_kind_of Yell::Logger
    end
  end

end

