class User < ApplicationRecord
  has_many :posts
  
  def to_s
    first_name
  end
end
