# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class UsersController < ApplicationController

            def create
                user = User.create!(user_params)
                render json: user, status: :created
            end

            private
                
            def user_params
                params.permit(:email_address,:password,:role)
            end

        end
    end 
end