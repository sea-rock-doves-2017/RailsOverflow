class Question < ApplicationRecord

  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true

  has_many :answers

end
