class DurationsController < ApplicationController
  def new
    @duration = Duration.new
  end

  def create
    @time_off = Time.new(params[:time_off_hash][:year], params[:time_off_hash][:month], params[:time_off_hash][:day], params[:time_off_hash][:hour], params[:time_off_hash][:minute])
    @time_now = Time.new
    @time_difference = Time.at(@time_off - @time_now - 60*60)
  end
end
