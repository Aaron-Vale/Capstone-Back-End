class QuizzesController < ProtectedController
  before_action :set_quiz, only: [:update, :destroy]

  # GET /quizzes
  def index
    @quizzes = Quiz.order('category ASC')

    render json: @quizzes
  end

  # GET /quizzes/1
  def show
    render json: Quiz.find(params[:id])
  end

  # POST /quizzes
  def create
    @quiz = current_user.quizzes.build(quiz_params)

    if @quiz.save
      render json: @quiz, status: :created
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    if @quiz.update(quiz_params)
      render json: @quiz
    else
      render json: @quiz.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = current_user.quizzes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quiz_params
      params.require(:quiz).permit(:category, :title)
    end
end
