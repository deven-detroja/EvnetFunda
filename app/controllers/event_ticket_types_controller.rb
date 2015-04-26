class EventTicketTypesController < ApplicationController
  before_action :set_event_ticket_type, only: [:show, :edit, :update, :destroy]

  # GET /event_ticket_types
  # GET /event_ticket_types.json
  def index
    @event_ticket_types = EventTicketType.all
  end

  # GET /event_ticket_types/1
  # GET /event_ticket_types/1.json
  def show
  end

  # GET /event_ticket_types/new
  def new
    @event_ticket_type = EventTicketType.new
  end

  # GET /event_ticket_types/1/edit
  def edit
  end

  # POST /event_ticket_types
  # POST /event_ticket_types.json
  def create
    @event_ticket_type = EventTicketType.new(event_ticket_type_params)

    respond_to do |format|
      if @event_ticket_type.save
        format.html { redirect_to @event_ticket_type, notice: 'Event ticket type was successfully created.' }
        format.json { render :show, status: :created, location: @event_ticket_type }
      else
        format.html { render :new }
        format.json { render json: @event_ticket_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_ticket_types/1
  # PATCH/PUT /event_ticket_types/1.json
  def update
    respond_to do |format|
      if @event_ticket_type.update(event_ticket_type_params)
        format.html { redirect_to @event_ticket_type, notice: 'Event ticket type was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_ticket_type }
      else
        format.html { render :edit }
        format.json { render json: @event_ticket_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_ticket_types/1
  # DELETE /event_ticket_types/1.json
  def destroy
    @event_ticket_type.destroy
    respond_to do |format|
      format.html { redirect_to event_ticket_types_url, notice: 'Event ticket type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_ticket_type
      @event_ticket_type = EventTicketType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_ticket_type_params
      params.require(:event_ticket_type).permit(:name, :description, :price, :min, :max)
    end
end
