class AddSlugToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :slug, :string
  end
end
