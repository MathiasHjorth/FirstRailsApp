class Article < ApplicationRecord

  #validation regler:
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

end
