class SiteDataItem < ActiveRecord::Base
  validates_presence_of :keyname, :value
end
