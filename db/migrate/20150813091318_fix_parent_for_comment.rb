class FixParentForComment < ActiveRecord::Migration
  def change
    rename_column :comments, :parent, :parent_id
  end
end
