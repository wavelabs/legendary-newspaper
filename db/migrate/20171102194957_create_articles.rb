class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :headline
      t.text :body
      t.string :lead

      t.timestamps
    end
  end
end
