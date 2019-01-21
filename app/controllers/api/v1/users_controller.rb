class Api::V1::UsersController < ApplicationController

    def index
      @users = User.all
      render json: @users, status: :ok
    end

    def show
      @user = User.find(params[:id])
      render json: @user, status: :ok
    end

    def create
      @new_user = User.create(user_params)
      render json: @new_user, status: :accepted
    end

    # We can maybe implement update and destroy if we have time after hitting MVP.

    private

      def user_params
        params.permit(:name)
        # I know we normally have the nested structure with require and permit, but this is what worked for my mod3 project, so I'm trying it here. I'm not sure if using a non-rails front-end omits the nested structure?
      end
end
