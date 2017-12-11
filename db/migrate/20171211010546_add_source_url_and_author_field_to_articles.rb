class AddSourceUrlAndAuthorFieldToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :source_url, :string
    add_column :articles, :contributor, :string
  end
end
