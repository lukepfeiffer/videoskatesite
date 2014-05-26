class Video < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates_presence_of :url, :description
end
