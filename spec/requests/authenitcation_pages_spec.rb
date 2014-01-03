require 'spec_helper'
include Devise::TestHelpers

describe "Authentication" do
  
  subject { page }

  describe "admin login page" do
  	before { visit admin_root_path }

  	it { should have_selector('h2', text: 'Rawr Denim Scout Login') }
  end
end