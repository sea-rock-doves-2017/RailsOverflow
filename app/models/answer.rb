class Answer < ApplicationRecord

  validates :content, :question_id, :user_id, presence: true
  belongs_to :question

end
