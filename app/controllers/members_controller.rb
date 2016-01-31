class MembersController < ApplicationController
  load_and_authorize_resource :user
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
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
      params.require(:member).permit(:firstname, :lastname, :date_received, :zone, :region, :chapter, :district, :sponsor_name, :enshrined, :district_connected, :contact_person, :note)
    end
end
