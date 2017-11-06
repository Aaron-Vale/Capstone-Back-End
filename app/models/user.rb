# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :quizzes
  has_many :question_responses
  has_many :questions, through: :question_responses
end
