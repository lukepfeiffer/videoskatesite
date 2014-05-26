class User < ActiveRecord::Base
  include Authem::User
  has_many :videos
  has_many :comments
end
