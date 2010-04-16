class CreateSiteDataItems < ActiveRecord::Migration
  def self.up
    create_table :site_data_items do |t|
      t.string :key
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :site_data_items
  end
end
