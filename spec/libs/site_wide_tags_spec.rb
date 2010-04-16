require File.dirname(__FILE__) + '/../spec_helper'

describe 'SiteWideTags' do
  dataset :pages, :site_wide
  
    describe '<r:site_wide>' do
      it 'should require a key value in the keyname attribute' do
        tag = %{<r:site_wide />}
        
        pages(:home).should render(tag).with_error('the site_wide-tag needs a key value in the keyname attribute')
      
      end
      
      it 'should output a value when given a valid keyname' do
        tag = %{<r:site_wide keyname='Author' />}
        expected = 'John Polling'
        pages(:home).should render(tag).as(expected)
      end
      
      it 'should require a valid keyname' do
        tag = %{<r:site_wide keyname='Site Author' />}
        expected = 'Invalid keyname'
        pages(:home).should render(tag).as(expected)
      end  
      
    end
  
end