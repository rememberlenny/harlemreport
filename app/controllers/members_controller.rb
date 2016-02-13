class MembersController < ApplicationController
  load_and_authorize_resource :user
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    if params.has_key?(:year) && params[:year].to_i != 0
      year = Date.new(params[:year])
      @members = Member.where("date_received >= ? AND date_received <= ?", year, year + 1.year - 1.day)
      if params.has_key?(:month) && params[:month].to_i != 0
        month = Date.new(params[:year], param[:month])
        @members = Member.where("date_received >= ? AND date_received <= ?", month, month + 1.month - 1.day)
      end
    else
      @members = Member.all
    end
    respond_with(@members)
  end

  def show
    respond_with(@member)
  end

  def new
    @member = Member.new
    respond_with(@member)
  end

  def edit
  end

  def create
    @member = Member.new(member_params)
    @member.save
    respond_with(@member)
  end

  def update
    @member.update(member_params)
    respond_with(@member)
  end

  def destroy
    @member.destroy
    respond_with(@member)
  end

  private
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:territory, :member_uid, :email, :phone_primary, :phone_secondary, :address, :state, :zipcode, :subscription, :auto_renewal, :sustaining_contributor, :photo, :photo_id, :firstname, :lastname, :division, :date_received, :zone, :region, :chapter, :district, :sponsor_name, :enshrined, :district_connected, :contact_person, :note)
    end
end
