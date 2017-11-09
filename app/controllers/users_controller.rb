# frozen_string_literal: true

class UsersController < ProtectedController
  skip_before_action :authenticate, only: %i[signup signin]

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out/1'
  def signout
    if current_user == User.find(params[:id])
      current_user.logout
      head :no_content
    else
      head :unauthorized
    end
  end

  # PATCH '/change-password/:id'
  def changepw
    if !current_user.authenticate(pw_creds[:old]) ||
       (current_user.password = pw_creds[:new]).blank? ||
       !current_user.save
      head :bad_request
    else
      head :no_content
    end
  end

  def index
    render json: User.order('score DESC')
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    creds = user_creds
    @user = User.find(params[:id])

    if !creds[:propic]
      creds[:propic] = current_user[:propic]
    elsif !creds[:score]
      creds[:score] = current_user[:score]
    elsif !creds[:username]
      creds[:propic] = current_user[:username]
    end

    if current_user[:id].to_i != params[:id].to_i
      head :bad_request
    elsif @user.update(user_creds)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_creds
    params.require(:user)
          .permit(:email, :password, :password_confirmation, :username, :score, :propic)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  private :user_creds, :pw_creds
end
