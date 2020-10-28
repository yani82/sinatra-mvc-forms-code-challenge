class OrdersController < ApplicationController

    post '/orders' do
        # binding.pry
        @order = Order.new(params)
        @order.save
    end 

    get '/success' do

    end 

end 