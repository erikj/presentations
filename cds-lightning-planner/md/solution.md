
# Our Solution: MissionPlanner

- GIS Web application
- Field-Catalog data
- asset positions via GPS
- communication via SMS

!SLIDE

# Our Solution: MissionPlanner

- OpenLayers GIS JavaScript library
- OpenStreetMap base layer
- Ruby-on-Rails, MySQL backend
- Devise Ruby authentication library
- Bootstrap, jQuery, Backbone, Dust.js CSS and JS libraries
- DeLorme inReach GPS devices and Outbound API
- Twilio SMS service

!SLIDE

# DeLorme inReach GPS

<img src='img/inreachse_m01.jpg' />

!SLIDE

# DeLorme inReach Outbound API

<img src='img/inreach-outbound.png' />

!SLIDE

# Twilio SMS

```ruby
account_sid, auth_token = "abc", "123"
client = Twilio::REST::Client.new account_sid, auth_token

from = "+14159998888" # Your Twilio number

friends = { "+14153334444" => "Curious George" }

friends.each do |key, value|
  client.account.messages.create(
    from: from,
    to:   key,
    body: "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
  )
end
```
