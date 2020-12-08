class RemoveComentFromPostComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_comments, :coment, :text
  end
end
