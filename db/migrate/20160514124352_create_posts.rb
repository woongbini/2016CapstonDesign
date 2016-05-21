class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id  #유저ID(FK)
      t.boolean :is_host  #HOST구분
      t.string :title     #제목
      t.string :category  #카테고리
      t.text :host_info   #호스트 정보
      t.text :vol_info    #볼룬탈 정보(소개)
      t.string :schedule  #일정,스케줄
      t.string :place     #장소
 
      t.timestamps
    end
  end
end
