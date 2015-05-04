class ListEventMasterController < ApplicationController
	before_action :set_event_master, only: [:show]

  respond_to :html

  def index
  	@event_master = EventMaster.latest_events.page(params[:page]).per_page(10)
  	#EventMaster.all.paginate(:page => params[:page], :order => "updated_at DESC", :per_page => 10)
    # respond_with(@event_masters)
  end

  def show

  	 respond_with(@event_master)

  end

private
    def set_event_master
      @event_master = EventMaster.find(params[:id])
    end

    def event_master_params
      params.require(:event_master).permit(:title, :url, :description, :capacity, :private, :status, :start_date,
       :end_date, :max, :image, :event_category_mappings_attributes => [:categories_id,:sub_categories_id=> [] ])
    end

end
