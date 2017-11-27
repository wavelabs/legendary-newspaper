class AddPaperclipToBanner < ActiveRecord::Migration[5.1]
  def change
    add_attachment :banners, :picture
  end
end
