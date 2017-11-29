class RemoveImageToBanner < ActiveRecord::Migration[5.1]
  def change
    remove_reference :banners, :image, index: true
  end
end
