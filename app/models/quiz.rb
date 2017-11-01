class Quiz < ApplicationRecord
  belongs_to :user
  validates :title, :category, presence: true, on: :create
end
