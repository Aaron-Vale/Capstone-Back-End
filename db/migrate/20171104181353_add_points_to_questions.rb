class AddPointsToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :points, :integer, :default => 5
  end
end
