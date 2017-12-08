class RemoveBannerRefFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :banner_id, :integer
  end
end
