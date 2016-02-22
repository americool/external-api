class Api::V1::UserController < ApiController
  def index
    users = User.all

    render json: users, each_searializer: UserSerializer
  end

end 
