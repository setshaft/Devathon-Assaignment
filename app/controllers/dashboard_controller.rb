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
  @expense = Expense.find(params[:id])
  @owed_by = @expense.owed_by
  @friend_email = User.find(@owed_by).email
  end

  def create_expense
     @expense = Expense.new
    @expense.amount = params[:amount]
    @expense.owed_by = params[:owed_by]
    @expense.owe_to = params[:owe_to]
    redirect_to '/dashboard/expense' if @expense.save
  end

  def i_owe
    @expense = Expense.find_by_owed_by(current_user.id)
    @owe_to = @expense.owe_to
  @friend_email = User.find(@owe_to).email
  end
end
