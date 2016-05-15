class User < ActiveRecord::Base
   has_many :posts
   has_many :comments
   validates :email, :presence => {:message => "email을 반드시 입력하셔야 합니다."}
   validates :email, :uniqueness => {:message => "중복된 email을 사용하셧습니다."}
   validates :password, :length => {:message => 6, :too_short => "최소 6자 이상입력하세요"}
   validates :nickname, :uniqueness => {:message => "중복된 닉네임을 사용하셧습니다."}


end
