class Admin::EventsController < Admin::BaseController
  def index
    @admin_events = Admin::Event.all
  end
  def new
    @admin_event = Admin::Event.new
  end
  def create
    @admin_event = Admin::Event.new(admin_event_params)

    respond_to do |format|
      if @admin_event.save
        format.html { redirect_to admin_events_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @admin_event }
      else
        format.html { render :new }
        format.json { render json: @admin_event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_event = Admin::Event.find(params[:id])
    @admin_event.destroy
    respond_to do |format|
      format.html { redirect_to admin_events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def admin_event_params
      params.require(:admin_event).permit(:title, :description, images: [])
    end
end
