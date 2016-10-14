class UsersController < ApplicationController
  def show
    @item = Item.find_by(:name => params[:name])
    render :json => @item
  end

  def root
    @item = Item.find_by(:name => 'kawase-y')
    render :json => @item[:price]
  end
end
