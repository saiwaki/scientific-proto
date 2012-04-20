class Problem < ActiveRecord::Base
  attr_accessible :title, :content
  belongs_to :user
  
  has_many :watches
  has_many :watching_users, through: :watches
  
  has_many :answers
  has_many :references, as: :referable
end
