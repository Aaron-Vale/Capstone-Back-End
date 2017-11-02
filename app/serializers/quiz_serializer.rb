class QuizSerializer < ActiveModel::Serializer
  attributes :id, :category, :title, :user, :questions
  has_one :user
end
