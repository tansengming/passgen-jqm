#= require md5
#= require URI.min

@Helper =
  url_val: (url) ->
    URI(url).domain().toLowerCase()
  hash_val: (password, sitename) ->
    hex_md5(password + ':' + sitename).substr(0,8)