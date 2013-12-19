class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true
  validates :price, presence: true
  
  belongs_to :admin
  
  def description
    "#{title} by #{author}"
  end
end
