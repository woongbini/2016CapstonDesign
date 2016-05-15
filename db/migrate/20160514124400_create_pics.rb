class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      #post_id 를 받자.
      t.integer :post_id
 
      t.timestamps
    end
  end
end
