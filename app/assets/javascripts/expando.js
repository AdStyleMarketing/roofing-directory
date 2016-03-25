// Google Expando Method
// =====================================================

function googleExpandoToggle() {
    $(this).toggleClass('active');
    $(this).next().toggleClass('active');

    // ARIA
    $expando_card.attr('aria-hidden') === 'true' ? $expando.attr('aria-hidden', 'false') : $expando.attr('aria-hidden', 'true');
}


// Google Expando Event
// =====================================================

$('.google-expando__icon').on('click', function() {
    googleExpandoToggle.call(this);
});