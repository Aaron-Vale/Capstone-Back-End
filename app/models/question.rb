class Question < ApplicationRecord
  belongs_to :quiz
  belongs_to :user, through: :quiz
  validates :correct, inclusion: { in: [1, 2, 3, 4],
   message: "%{correct} must correspond to an answer number (1,2,3,4)" }
  validates :title, :answer1, :answer2, :answer3, :answer4, :correct, presence: true, on: :create
end
