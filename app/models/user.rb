class User < ActiveRecord::Base
   has_many :posts
   has_many :comments
   validates :email, :presence 
   validates :email, :uniqueness => {:message => "중복된 email을 사용하셧습니다."}
   validates :password, :length => {:minimum => 6, :too_short => "최소 6자 이상 입력하세요"}
   validates :password, :presence
   validates :nickname, :uniqueness => {:message => "중복된 닉네임을 사용하셧습니다."}
   validates :nickname, :presence
   validates :phone, :uniqueness => {:message => "이미 있는 전화번호 입니다."}
   validates :phone, :presence
end
