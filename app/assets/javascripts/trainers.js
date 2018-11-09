document.addEventListener("turbolinks:load", function() {
    var public_key = document.querySelector("meta[name='stripe-public-key").content;
    var stripe = Stripe(public_key);
    var elements = stripe.elements();

    var style = {
        base: {
            color: '#32325d',
            lineHeight: '32px',
            fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
            fontSmoothing: 'antialiased',
            fontSize: '18px',
            '::placeholder': {
                color: '#aab7c4'
            }
        },
        invalid: {
            color: '#fa755a',
            iconColor: '#fa755a'
        }
    };

    var card = elements.create('card', {
        style: style
    });

    card.mount("#card-element");

    card.addEventListener('change', ({
        error
    }) => {
        var displayError = document.getElementById('card-errors');
        if (error) {
            displayError.textContent = error.message;
        } else {
            displayError.textContent = '';
        }
    });


    var form = document.getElementById('payment_form');
    // Create a token or display an error when the form is submitted.
    // var form = document.getElementById('payment-form');
    form.addEventListener('submit', function(event) {
        event.preventDefault();

        stripe.createToken(card).then(function(result) {
            if (result.error) {
                // Inform the customer that there was an error.
                var errorElement = document.getElementById('card-errors');
                errorElement.textContent = result.error.message;
            } else {
                // Send the token to your server.
                stripeTokenHandler(result.token);
            }
        });
    });

    function stripeTokenHandler(token) {
        // Insert the token ID into the form so it gets submitted to the server
        var form = document.getElementById('payment_form');
        var hiddenInput = document.createElement('input');
        hiddenInput.setAttribute('type', 'hidden');
        hiddenInput.setAttribute('name', 'stripeToken');
        hiddenInput.setAttribute('value', token.id);
        form.appendChild(hiddenInput);

        ["brand", "exp_month", "exp_year", "last4"].forEach(function(field) {
            addFieldToForm(form, token, field);
        });

        // Submit the form
        form.submit();
    }

    function addFieldToForm(form, token, field) {
        var hiddenInput = document.createElement('input');
        hiddenInput.setAttribute('type', 'hidden');
        hiddenInput.setAttribute('name', "user[card_" + field + "]");
        hiddenInput.setAttribute('value', token.card[field]);
        form.appendChild(hiddenInput);
    }
});