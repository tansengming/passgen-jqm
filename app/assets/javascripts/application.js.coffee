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
#= require md5
#= require async_analytics

$('#form-page').live('pageinit', (event) -> 
  if (localStorage.masterpassword)
    $('#password-form #password').val(localStorage.masterpassword)
  return false
)

$('#form-page').live('pageinit', (event) ->
  $('#password-form').submit( () ->
    password = $(this).find('#password').val()
    sitename = $(this).find('#sitename').val()
    hash_value = hex_md5(password + ':' + sitename).substr(0,8)
    $(this).find('#hash').val(hash_value).focus()
    localStorage.masterpassword = password
    return false;
  )
)