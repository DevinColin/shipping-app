class StaticPagesController < ApplicationController
  def home
    @boat = Boat.new
    @job = Job.new
  end
end
