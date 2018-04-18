class AddVisualizationsToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :visualizations, :integer
  end
end
