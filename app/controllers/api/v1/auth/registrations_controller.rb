class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def new
    user = User.new
    user.create!(sign_up_params)
    render json: user
  end

  private

    def sign_up_params
      params.permit(:name, :email, :password)
    end

    def account_update_params
      params.permit(:name, :email)
    end
end
