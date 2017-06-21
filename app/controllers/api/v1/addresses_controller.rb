class Api::V1::AddressesController < ApplicationController
	  respond_to :json
  def index
  	if params[:search]
  		respond_with Address.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
  	else	
    	respond_with Address.all.paginate(:page => params[:page], :per_page => 10)
  	end
  end
  def create
    respond_with :api, :v1, Address.create(address_params)
  end
  def destroy
    respond_with Address.destroy(params[:id])
  end
  def update
  	address = Address.find(params["id"])
    address.update_attributes(address_params)
    respond_with address, json: address
  end

  private
  def address_params
  	params.require(:address).permit(:id, :street, :city, :zip, :state, :beds,:baths,:address_type,:sale_date,:price,:latitude,:longitude,:sq_ft)
  end
end 
