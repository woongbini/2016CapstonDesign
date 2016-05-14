class Post < ActiveRecord::Base
   belongs_to :user
   has_many :comments
   validates :title, :presence => {:message => "제목을 입력하세요"}

end
