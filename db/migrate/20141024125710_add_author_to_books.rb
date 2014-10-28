class AddAuthorToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author_id, :integer
    remove_column :books, :author, :string
  end
end
