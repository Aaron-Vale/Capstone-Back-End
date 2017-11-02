class QuizSerializer < ActiveModel::Serializer
  attributes :id, :category, :title, :user, :questions, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
