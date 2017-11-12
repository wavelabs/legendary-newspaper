class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :filename
      t.string :filepicker_url
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
