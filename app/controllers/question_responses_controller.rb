class QuestionResponsesController < ProtectedController
  before_action :set_question_response, only: [:show, :update, :destroy]

  # GET /question_responses
  def index
    @question_responses = QuestionResponse.all

    render json: @question_responses
  end

  # GET /question_responses/1
  def show
    render json: @question_response
  end

  # POST /question_responses
  def create
    @question_response = current_user.question_responses.build(question_response_params)

    if @question_response.save
      render json: @question_response, status: :created
    else
      render json: @question_response.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_responses/1
  def update
    if @question_response.update(question_response_params)
      render json: @question_response
    else
      render json: @question_response.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_responses/1
  def destroy
    @question_response.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_response
      @question_response = QuestionResponse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_response_params
      params.require(:question_response).permit(:user_id, :question_id)
    end
end
