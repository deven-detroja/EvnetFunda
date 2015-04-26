class EventMastersController < ApplicationController
  before_action :set_event_master, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @event_masters = EventMaster.all
    respond_with(@event_masters)
  end

  def show
    respond_with(@event_master)
  end

  def new
    @event_master = current_user.event_masters.new
    p "current_usercurrent_usercurrent_usercurrent_user"
    p current_user
    p "current_usercurrent_usercurrent_usercurrent_user"
    respond_with(@event_master)
  end

  def edit
  end

  def create
    @event_master = current_user.event_masters.new(event_master_params)
    p "event_master_paramsevent_master_paramsevent_master_paramsevent_master_params"
    p event_master_params
    @event_master.save
    respond_with(@event_master)
  end

  def update
    @event_master.update(event_master_params)
    respond_with(@event_master)
  end

  def destroy
    @event_master.destroy
    respond_with(@event_master)
  end
  
  def populate_subcategory
    puts "populate_subcategory"
  end 

  private
    def set_event_master
      @event_master = EventMaster.find(params[:id])
    end

    def event_master_params
      params.require(:event_master).permit(:title, :url, :description, :capacity, :private, :status, :start_date, :end_date, :max, :image, :event_category_mappings => [:category_id,:event_master_id])
    end
end
