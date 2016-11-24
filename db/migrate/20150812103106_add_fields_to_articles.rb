class AddFieldsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author, :string
    add_column :articles, :slug, :string
    add_reference :articles, :category, index: true, foreign_key: true
  end
end
