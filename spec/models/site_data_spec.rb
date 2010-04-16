require File.dirname(__FILE__) + '/../spec_helper'

describe SiteData do
  before(:each) do
    @site_data = SiteData.new
  end

  it "should be valid" do
    @site_data.should be_valid
  end
end
