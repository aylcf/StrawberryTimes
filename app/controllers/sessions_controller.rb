class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to console_main_url
    else
      redirect_to login_url, :alert => '用户或密码不存在。'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_index_url, :notice => "注销成功。"
  end
end
