class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])

    if user
      if user.authenticate(params[:password])
        render text: "PASSWORD OK"
      else
        render text: 'password not ok'
      end
    else
      render text: 'user not found'
    end
  end
end
