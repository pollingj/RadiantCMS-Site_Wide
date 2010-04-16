module SiteWideTags
  include Radiant::Taggable

  tag "site_wide" do |tag|
    # we need a user in the user attribute
    raise StandardError::new('the site_wide-tag needs a key value in the keyname attribute') if tag.attr['keyname'].blank?
  
    site_data_item = SiteDataItem.first(:conditions => { :keyname => tag.attr['keyname'] } )
    
    if site_data_item != nil
      return site_data_item.value
    end
    
    "Invalid keyname"
  end
  
end