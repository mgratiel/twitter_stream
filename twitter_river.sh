# connect twitter to ELK
input {
  twitter {
    consumer_key => "Mt07Nfq8Av2x3Qpr4MjjRqP53"
    consumer_secret => "MfMA0jDqTcV0DiD2TheIQUAXB1TmiKPgO9cXhKE4r39MO7EuNB"
    oauth_token => "2612259637-9aUCDxtxUBhzoDXQlwTa2jpVkUyOoiFEuN4WJkT"
    oauth_token_secret => "faYRK8BkzX7LaUA9hJCYcm8SPlyqYtIyk13qxPbMJjYLt"
    keywords => ["immoweb", "#immoweb"]
    tags => ["immoweb"]
    type => "immoweb"
  }
}

output {
  stdout {
    codec => rubydebug 
  }
  elasticsearch_http {
    host => "localhost"
  }
}