#= require jquery
#= require helper

describe "Helper.url_val", ->
  it "should be lowercase", ->
    expect(Helper.url_val('http://EXAMPLE.com')).toBe('example.com')
  it "should strip subdomains", ->
    expect(Helper.url_val('http://subdomain.example.com')).toBe('example.com')

describe "Helper.hash_val", ->
  it 'should return an 8 char hash', ->
    expect(Helper.hash_val('123456', 'example.com')).toBe('3a9b25e5')