  class Comment < ActiveRecord::Base
  belongs_to :post
end

class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
  [...]
end