class ExpensesController < ApplicationController
  def index
		
  	@expenses = Expense.order('date DESC')
  	@expenses =  @expenses.concept(params[:concept]) if params[:concept].present?
  	@expenses= @expenses.category_id(params[:category_id]) if params[:category_id].present?
  end	

  

   

end
