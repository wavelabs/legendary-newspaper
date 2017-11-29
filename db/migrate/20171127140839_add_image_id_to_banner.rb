class AddImageIdToBanner < ActiveRecord::Migration[5.1]
  def change
    add_reference :banners, :image, index: true
  end
end
