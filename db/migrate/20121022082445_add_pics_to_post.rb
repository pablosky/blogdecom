class AddPicsToPost < ActiveRecord::Migration
  def change
    add_column :posts, :file2, :string
    add_column :posts, :file3, :string
  end
end
