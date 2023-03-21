class Comment < ApplicationRecord

  #indikerer en 1-* relation til article modellen
  # 1 article kan have mange comments
  belongs_to :article

  #validation:
  validates :commenter, presence: true

end
