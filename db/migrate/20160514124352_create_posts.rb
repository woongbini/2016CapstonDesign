class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :po_id      #구분하기 위한 ID
      t.integer :user_id    #유저ID(FK)
      t.boolean :is_host    #HOST구분
      t.string :title       #제목
      t.string :category    #카테고리
      t.integer :num_people #사람수
      t.text :host_info     #호스트 정보
      t.text :vol_info      #볼룬탈 정보(소개)
      t.string :start_time  #시작 일정
      t.string :end_time    #끝나는 일정
      t.string :place       #장소
 
      t.timestamps
    end
  end
end
