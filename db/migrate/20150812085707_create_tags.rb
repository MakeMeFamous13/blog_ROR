class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :weight
      t.string :slug

      t.timestamps null: false
    end
  end
end
