class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :user
      t.references :article, index: true, foreign_key: true
      t.references :parent_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
