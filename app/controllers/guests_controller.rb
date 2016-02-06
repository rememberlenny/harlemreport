class GuestsController < ApplicationController
  load_and_authorize_resource :user
  respond_to :html
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  def index
    @guests = Guest.all
    respond_with(@guests)
  end

  def show
    respond_with(@guest)
  end

  def new
    @guest = Guest.new
    respond_with(@guest)
  end

  def edit
  end

  def create
    @guest = Guest.new(guest_params)
    @guest.save
    respond_with(@guest)
  end

  def update
    @guest.update(guest_params)
    respond_with(@guest)
  end

  def destroy
    @guest.destroy
    respond_with(@guest)
  end

  private
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:chapter, :division, :district, :profile_image, :profile_image_id, :profile_image_cache_id, :firstname, :lastname, :status, :last_meeting, :sponsor_name, :last_contact, :contact_person, :note)

    end
end
