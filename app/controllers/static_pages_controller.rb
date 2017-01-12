class StaticPagesController < ApplicationController
  def home
    @boat = Boat.new
    @job = Job.new
    @jobs = Job.order(updated_at: :asc).reverse_order.limit(10).reverse
  end
end
