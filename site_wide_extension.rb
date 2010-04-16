# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class SiteWideExtension < Radiant::Extension
  version "1.0"
  description "Used to generate site wide properties"
  url "http://theled.co.uk"
  
  define_routes do |map|
    map.namespace :admin, :member => { :remove => :get } do |admin|
       admin.resources :site_data_items
    end
  end
  
  def activate
    admin.tabs.add "Site Wide", "/admin/site_data_items", :after => "Layouts", :visibility => [:all]
    #Page.send :include, SiteWideTags
  end
  
  def deactivate
    admin.tabs.remove "Site Wide"
  end
  
end
