class Quiz < ApplicationRecord
  belongs_to :user, autosave: :true
  has_many :questions, dependent: :destroy
  validates :title, :category, presence: true, on: %i[create update]
end
