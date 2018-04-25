class AddForCarrouselToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :for_carrousel, :boolean
  end
end
