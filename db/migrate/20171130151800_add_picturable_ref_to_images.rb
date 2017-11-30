class AddPicturableRefToImages < ActiveRecord::Migration[5.1]
  def change
    add_reference :images, :pictureable, polymorphic: true, index: true
  end
end
