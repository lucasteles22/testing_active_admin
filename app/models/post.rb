class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :subjects
  belongs_to :user
end
