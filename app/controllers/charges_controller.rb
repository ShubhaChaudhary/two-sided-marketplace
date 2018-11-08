class ChargesController < ApplicationController
  def new
    
  end

  def create
    puts "<<<<<<<< >>>>>>>>>>>>>>>>>"
    pp params
    trainer = Trainer.find(params[:trainer_id])
    puts "<<<<<<<< >>>>>>>>>>>>>>>>>"
    
    @amount = 5000
    token = params[:stripeToken]
    card_brand = params[:user][:card_brand]
    card_exp_month = params[:user][:card_exp_month]
    card_exp_year  = params[:user][:card_exp_year]
    card_last4 = params[:user][:card_last4]

    customer = Stripe::Customer.create(
    :email  => "stripe_email@example.com",
    :source => token
  )


    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :currency => "aud",
      :description => "Booking for #{trainer.first_name}",
      :statement_descriptor => (trainer.first_name + " " + trainer.last_name)
    )  
    # debugger
    
    rescue Stripe::CardError => e
      flash.alert = e.message
      render action: :stripeit   
    
  end
end
