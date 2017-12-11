class RemoveAuthorReferenceFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_reference :articles, :author, foreign_key: true
  end
end
