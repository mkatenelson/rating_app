class UsersController < ApplicationController
  # before_action :set_place, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show] # comes from devise, routes unauthenticated users to sign_up page

  def show
    # @user = User.find(params[:id])
    @reviews = Review.where(user_id: @user.id).order("created_at DESC")
  end

end


# 
#   private
#     def set_user
#       @user = User.find(params[:id])
#     end
#
#     def place_user
#       params.require(:user).permit(:name, :email, :password)
#     end
# end
