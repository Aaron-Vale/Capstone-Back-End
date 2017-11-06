class CreateQuestionResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :question_responses do |t|
      t.belongs_to :user, index: true
      t.belongs_to :question, index: true
      t.timestamps
    end
  end
end
