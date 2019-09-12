require 'rufus-scheduler'
class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  # GET /reminders
  # GET /reminders.json
  def index
    @reminders = Reminder.all
  end

  # GET /reminders/1
  # GET /reminders/1.json
  def show
    #
    # scheduler = Rufus::Scheduler.new
    #
    # scheduler.in '5s' do
    #   puts "10 days reminder for review X!"
    # end
    @reminders = Reminder.all
    @reminder = Reminder.find(params[:id])

    if @reminder.valid?
      flash[:reminder] = @reminder
      flash[:reminder]
    end
    account_sid = "ACba01610f43898504c187d8ef5a54b08d" # Your Test Account SID from www.twilio.com/console/settings
    auth_token = "f434030bfaf3bab143c64cf75d15c900"   # Your Test Auth Token from www.twilio.com/console/settings

    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.messages.create(
        body: "Hello from Ruby",
        to: "+13474302704",    # Replace with your phone number
        from: "+19102089172")  # Use this Magic Number for creating SMS

    puts message.sid
  end

  # GET /reminders/new
  def new
    @reminder = Reminder.new
  end

  # GET /reminders/1/edit
  def edit
  end

  # POST /reminders
  # POST /reminders.json
  def create
    @reminder = Reminder.new(reminder_params)

    respond_to do |format|
      if @reminder.save
        format.html { redirect_to @reminder, notice: 'Reminder was successfully created.' }
        format.json { render :show, status: :created, location: @reminder }
      else
        format.html { render :new }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reminders/1
  # PATCH/PUT /reminders/1.json
  def update
    respond_to do |format|
      if @reminder.update(reminder_params)
        format.html { redirect_to @reminder, notice: 'Reminder was successfully updated.' }
        format.json { render :show, status: :ok, location: @reminder }
      else
        format.html { render :edit }
        format.json { render json: @reminder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reminders/1
  # DELETE /reminders/1.json
  def destroy
    @reminder.destroy
    respond_to do |format|
      format.html { redirect_to reminders_url, notice: 'Reminder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reminder
      @reminder = Reminder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reminder_params
      params.require(:reminder).permit(:name, :phone_number, :time)
    end
end
