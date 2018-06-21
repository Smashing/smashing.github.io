# init when dom loaded
$ ->
  # smooth scroll simple implementation
  $('.js-smoothscroll')
    .click (event) ->
      target = $($(event.target).attr('href'))
      $('html, body').animate({ scrollTop: target.offset().top }, 1000)

