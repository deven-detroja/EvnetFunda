class EventCategoryMappingsController < ApplicationController
  before_action :set_event_category_mapping, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @event_category_mappings = EventCategoryMapping.all
    respond_with(@event_category_mappings)
  end

  def show
    respond_with(@event_category_mapping)
  end

  def new
    @event_category_mapping = EventCategoryMapping.new
    respond_with(@event_category_mapping)
  end

  def edit
  end

  def create
    @event_category_mapping = EventCategoryMapping.new(event_category_mapping_params)
    @event_category_mapping.save
    respond_with(@event_category_mapping)
  end

  def update
    @event_category_mapping.update(event_category_mapping_params)
    respond_with(@event_category_mapping)
  end

  def destroy
    @event_category_mapping.destroy
    respond_with(@event_category_mapping)
  end

  private
    def set_event_category_mapping
      @event_category_mapping = EventCategoryMapping.find(params[:id])
    end

    def event_category_mapping_params
      params.require(:event_category_mapping).permit(:categories_id, :sub_categories_id, :event_master_id)
    end
end
