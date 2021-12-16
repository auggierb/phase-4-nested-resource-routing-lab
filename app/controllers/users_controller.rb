class UsersController < ApplicationController


  def show
    if params[:user_id]
    user = User.find_by(id: params[:id])
    render json: user, include: :items
    else render json:{ error: "not found"}, status: :not_found
  end
  end
 

 
end
