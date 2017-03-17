class QueriesController < ApplicationController
  def search
    render json: UserSchema.execute(params[:query], variables: params[:variables].to_h)
  end
end
