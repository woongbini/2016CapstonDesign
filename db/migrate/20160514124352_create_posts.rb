class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      # user_id를 받고 행 작성
      t.integer :user_id
      # 행 작성
      t.string :title
      t.string :category
      t.string :place
      t.text :content
 
      t.timestamps
    end
  end
end
