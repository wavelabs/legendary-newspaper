class AddLinkToBanner < ActiveRecord::Migration[5.1]
  def change
    add_column :banners, :link, :string
  end
end
