class AddBannerReferenceToImage < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :banner, foreign_key: true
  end
end
