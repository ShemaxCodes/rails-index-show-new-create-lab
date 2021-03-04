class CouponsController < ApplicationController


def index 
    @coupons = Coupon.all 
end 


def show 
    @coupon = Coupon.find(params[:id])
end 

def new 
    @coupon = Coupon.new
end 

def create
    #byebug
    @coupon = Coupon.new(coupon_params)
    @coupon.save
    redirect_to coupon_path(@coupon)
end 


private

def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
end 

end 