class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  validates :title, :category, presence: true, on: :create
end
