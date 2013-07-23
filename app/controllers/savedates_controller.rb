class SavedatesController < ApplicationController

  def index
    @savedates = Savedate.all

    @upcoming_dates = Savedate.where('eventdate > ?', Date.today)
    @upcoming_dates_order = @upcoming_dates.order("eventdate")
  end

  def new
    @savedate = Savedate.new
  end

  def create
    @savedate = Savedate.new(params[:savedate])
    if @savedate.save
      flash[:notice] = "Date has been saved."
      redirect_to savedates_path
    else
      flash[:alert] = "Date has not been saved."
      render :action => "new"
    end
  end

  def show
    @savedate = Savedate.find(params[:id])
  end

end
