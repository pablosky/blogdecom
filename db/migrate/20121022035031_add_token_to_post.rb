class AddTokenToPost < ActiveRecord::Migration
  def change
    add_column :posts, :dropbox_session, :string
  end
end
