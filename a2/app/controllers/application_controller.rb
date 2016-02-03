class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
	  @person = Person.all
  end

  def show
	  @person = Person.find(params[:id])
  end

  def new
  end 

  def create
	  render plain: params[:person].inspect
  end
end

