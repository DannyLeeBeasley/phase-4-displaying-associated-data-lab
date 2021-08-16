class UsersController < ApplicationController
    wrap_parameters format: []

    def show
        user = User.find(params[:id])
        render json: user, except: [ :created_at, :updated_at ], include: [ items: { except: [ :created_at, :updated_at ] }]
    end

end
