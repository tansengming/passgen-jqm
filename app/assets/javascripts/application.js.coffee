# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require jquery.mobile
#= require helper
#= require async_analytics

$('#form-page').live('pageinit', (event) -> 
  if (localStorage.masterpassword)
    $('#password-form #password').val(localStorage.masterpassword)
  false
)

$('#form-page').live 'pageinit', (event) ->
  $('#password-form').submit ->
    password = $(this).find('#password').val()
    nice_sitename = Helper.url_val($(this).find('#sitename').val())
    $(this).find('#hash').val(Helper.hash_val(password, nice_sitename)).focus()
    $(this).find('#site_hint small').html('Hashed from ' + nice_sitename)
    localStorage.masterpassword = password
    false