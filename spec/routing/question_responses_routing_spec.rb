require "rails_helper"

RSpec.describe QuestionResponsesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/question_responses").to route_to("question_responses#index")
    end


    it "routes to #show" do
      expect(:get => "/question_responses/1").to route_to("question_responses#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/question_responses").to route_to("question_responses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/question_responses/1").to route_to("question_responses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/question_responses/1").to route_to("question_responses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/question_responses/1").to route_to("question_responses#destroy", :id => "1")
    end

  end
end
