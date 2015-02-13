class ConsoleController < ApplicationController
  def main
    @total_orders = Order.count
    @current_user = User.find(session[:user_id]).name
  end
end
