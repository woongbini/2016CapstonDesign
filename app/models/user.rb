class User < ActiveRecord::Base
   has_many :posts
   has_many :comments
   validates :email, :presence => { :message => "email을 반드시 입력하셔야 합니다." }
   validates :email, :uniqueness => {:message => "중복된 email을 사용하셧습니다."}
   validates :password, :length => {:minimum => 6, :too_short => "최소 6자 이상 입력하세요"}
   validates :nickname, :uniqueness => {:message => "중복된 닉네임을 사용하셧습니다."}
   validates :nickname, :presence => { :message => "아이디를 반드시 입력하셔야 합니다." }
   validates :phone, :uniqueness => {:message => "이미 있는 전화번호 입니다."}
   validates :phone, :presence => { :message => "전화번호를 반드시 입력하셔야 합니다." }
   mount_uploader :profile_pic, ImageUploader
end
