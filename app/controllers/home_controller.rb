
class HomeController < ApplicationController
  def index
    @pie = Order.group(:currency).sum(:total)
    @month_sales = Order.group(:Month).sum(:total)
    @goals = Order
    @top_city = Order.group(:bill_city).limit(10).order('total DESC').sum(:total)
    @top_products = Order.group(:product_name).limit(10).order('total DESC').sum(:total)
    @returned = Order.where(:payment_state =='refunded').group(:product_name).limit(10).order('total DESC').sum(:total)
    # @top_city = Order.sum(
    # :group => 'bill_city',
    # :order => 'SUM(total) DESC',
    # :limit => 10)
    puts Order.group(:bill_city).sum(:total).first
  end
  def about

  end
end
