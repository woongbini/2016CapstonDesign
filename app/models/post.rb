class Post < ActiveRecord::Base
   belongs_to :user
   
   has_many :comments
   has_many :pics
   validates :title, :presence => {:message => "제목을 입력하세요"}
   
   mount_uploader :cover_pic, ImageUploader
   mount_uploader :pic1, ImageUploader
   mount_uploader :pic2, ImageUploader
   mount_uploader :pic3, ImageUploader

end
