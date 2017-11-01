class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :answer1, :answer2, :answer3, :answer4, :correct
  has_one :quiz
end
