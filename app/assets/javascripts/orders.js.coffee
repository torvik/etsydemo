jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  payment.setupForm()
  
payment =
  setupForm: ->
    $('#new_listing_order').submit ->
       $('input[type=submit]').attr('disabled',true)
       Stripe.card.createToken($('#new_listing_order'), payment.handleStripeResponse)
       false
        
  handleStripeResponse: (status, response) ->
      if status == 200
        alert(response.id)
      else
        alert(response.error.message)
