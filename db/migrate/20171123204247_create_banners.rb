class CreateBanners < ActiveRecord::Migration[5.1]
  def change
    create_table :banners do |t|
      t.string :picture
      t.integer :position

      t.timestamps
    end
  end
end
