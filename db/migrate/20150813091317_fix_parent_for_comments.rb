class FixParentForComments < ActiveRecord::Migration
  def change
    rename_column :comments, :parent_id_id, :parent
  end
end
