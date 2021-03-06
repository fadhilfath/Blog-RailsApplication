class Article < ActiveRecord::Base
  belongs_to :user
  
  # create a constraint, ensure that there is title when we save to database
  validates :title, presence:true, length: { minimum:3, maximum:50 }
  validates :description, presence:true, length: {minimum:10,maximum:300 }
  validates :user_id, presence:true
  
end