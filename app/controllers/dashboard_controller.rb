class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users = User.all - [current_user]
  end

  def view
     
     @user = current_user
  end

  def expense
    @user = current_user
   
  end

   def owe
  @expense = Money.where(owetoid: current_user.id)
  
  end

  def create_expense
     @money = Money.new
    @money.amount = params[:amount]
    @money.owed_by = User.find(params[:friends].to_i).email
    @money.owe_to = current_user.email
    @money.owedbyid = params[:friends].to_i
    @money.owetoid = current_user.id
    redirect_to '/dashboard/expense' if @money.save
  end

  def i_owe
      @expense = Money.where(owedbyid: current_user.id)

   
  end
end
