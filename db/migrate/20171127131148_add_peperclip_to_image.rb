class AddPeperclipToImage < ActiveRecord::Migration[5.1]
  def change
    add_attachment :images, :picture
  end
end
