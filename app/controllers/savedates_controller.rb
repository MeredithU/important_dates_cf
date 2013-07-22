class SavedatesController < ApplicationController

  def index

  end

  def new
    @savedate = Savedate.new
  end

  def create
    @savedate = Savedate.new(params[:savedate])
    if @savedate.save
      flash[:notice] = "Date has been saved."
      redirect_to @savedate
    else
      flash[:alert] = "Your date has not been saved."
      render :action => "new"
    end
  end

  def show
    @savedate = Savedate.find(params[:id])
  end

end
