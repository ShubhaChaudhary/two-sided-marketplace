# jQuery =>
#   alert
#   Stripe.setPublishableKey($("meta[name='stripe-public-key").attr('content'));
#   payment.setupForm()

# payment = 
#   setupForm: =>
#     $('#payment_form').submit =>
#     $('input[type=submit]').attr('disable', true)
#     form_element = $('#payment_form')
#     Stripe.createToken($(this), payment.stripeResponseHandler)
#     alert("Hellow....")
#     false

#   stripeResponseHandler: (status, response) =>
#     alert("Hellow....")
#     if status == 200 
#       alert(response.id)
#     else
#       alert(response.error.message)