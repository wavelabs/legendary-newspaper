class RemovePeperclipFromBanner < ActiveRecord::Migration[5.1]
  def change
    remove_attachment :banners, :picture
  end
end
