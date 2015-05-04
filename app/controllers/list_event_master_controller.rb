class ListEventMasterController < ApplicationController
  def index
  	@event_master = EventMaster.all.paginate(:page => params[:page], :per_page => 10)
    # respond_with(@event_masters)
  end

  def show
  end
end
