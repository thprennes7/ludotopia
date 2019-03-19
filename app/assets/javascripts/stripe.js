var handler = StripeCheckout.configure({
  key: '<%= Rails.configuration.stripe[:publishable_key] %>',
  locale: 'auto',
  name: 'Sand Castles United',
  description: 'One-time donation',
  token: function(token) {
    $('input#stripeToken').val(token.id);
    $('form').submit();
  }
});

$('#donateButton').on('click', function(e) {
  e.preventDefault();

  $('#error_explanation').html('');

  var amount = $('input#amount').val();
  amount = amount.replace(/\$/g, '').replace(/\,/g, '')

  amount = parseFloat(amount);

  if (isNaN(amount)) {
    $('#error_explanation').html('<p>Please enter a valid amount in USD ($).</p>');
  }
  else if (amount < 1.00) {
    $('#error_explanation').html('<p>Donation amount must be at least $5.</p>');
  }
  else {
    amount = amount * 100; // Needs to be an integer!
    handler.open({
      amount: Math.round(amount)
    })
  }
});

// Close Checkout on page navigation
$(window).on('popstate', function() {
  handler.close();
});