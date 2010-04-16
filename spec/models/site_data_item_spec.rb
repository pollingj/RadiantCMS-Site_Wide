require File.dirname(__FILE__) + '/../spec_helper'

describe SiteDataItem do
  before(:each) do
    @site_data_item = SiteDataItem.new

    @valid_attributes = {
      :keyname => "Author",
      :value => 'John Polling'
    }
  end

  it "should be valid" do
    @site_data_item.attributes = @valid_attributes
    @site_data_item.should be_valid
  end
  
  context 'validations' do
    it 'should require a key' do
      @site_data_item.attributes = @valid_attributes.except(:keyname)
      @site_data_item.should_not be_valid
      @site_data_item.errors.on(:keyname).should == "can't be blank"
    end
    
    it 'should require a value' do
      @site_data_item.attributes = @valid_attributes.except(:value)
      @site_data_item.should_not be_valid
      @site_data_item.errors.on(:value).should == "can't be blank"
    end
  end
end
