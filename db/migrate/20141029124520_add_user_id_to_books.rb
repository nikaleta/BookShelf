class AddUserIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :user_id, :string
    add_column :books, :integer, :string
  end
end
