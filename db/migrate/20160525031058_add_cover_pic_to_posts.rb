class AddCoverPicToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cover_pic, :string
    add_column :posts, :pic1, :string
    add_column :posts, :pic2, :string
    add_column :posts, :pic3, :string
    
  end
end
