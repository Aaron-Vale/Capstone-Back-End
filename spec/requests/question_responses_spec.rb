require 'rails_helper'

RSpec.describe "QuestionResponses", type: :request do
  describe "GET /question_responses" do
    it "works! (now write some real specs)" do
      get question_responses_path
      expect(response).to have_http_status(200)
    end
  end
end
