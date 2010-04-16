class SiteWideDataset < Dataset::Base

  def load
    create_site_data_item("Author", "John Polling")
    create_site_data_item("Copyright", "2010")
    create_site_data_item("Site Name", "The full site name")
  end

  helpers do
    def create_site_data_item(keyname, value, attributes = {})
      create_model :site_data_item, keyname, attributes.update(:keyname => keyname, :value => value)
    end
  end

end
