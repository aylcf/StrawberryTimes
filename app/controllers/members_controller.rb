class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
    unless @member == current_member
      redirect_to :back, :alert => "Access denied."
    end
  end


end
