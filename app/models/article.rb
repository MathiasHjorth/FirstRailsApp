class Article < ApplicationRecord

  #indikér at article kan have mange comments
  has_many :comments

  #validation regler:
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

end
