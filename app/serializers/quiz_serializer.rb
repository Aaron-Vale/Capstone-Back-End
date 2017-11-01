class QuizSerializer < ActiveModel::Serializer
  attributes :id, :category, :title, :user
  has_one :user
end
