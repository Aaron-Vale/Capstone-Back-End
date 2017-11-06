class Question < ApplicationRecord
  belongs_to :quiz
  validates :correct, inclusion: { in: [1, 2, 3, 4],
   message: "Correct answer must correspond to an answer number (1,2,3,4)" }
  validates :title, :answer1, :answer2, :answer3, :answer4, :correct, presence: true, on: %i[create update]
  validates :points, :inclusion => { :in => 1..20, :message => "The points must be between 1 and 20." }
end
