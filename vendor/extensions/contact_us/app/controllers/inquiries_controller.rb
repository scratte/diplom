class InquiriesController < ApplicationController
  helper 'spree/base'
  
  resource_controller
  
  create.flash I18n.t("got_it_well_be_back_in_touch_shortly")
  
  create.after do
    if params[:mailing_list] 
      # make call to mail engine API
    end
    
  end
  
  
  def index
    redirect_to(new_inquiry_url) unless params[:inquiry]
  end
  
  
end
