class QuestionResponseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :question_id
end
