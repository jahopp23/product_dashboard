class AddCommentToProducts < ActiveRecord::Migration
  def change
    add_column :products, :comment, :text
  end
end
