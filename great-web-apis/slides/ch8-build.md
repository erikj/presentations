# Build

!SLIDE

# Repeatable Process: DARRT

- Data
- Actions
- Resources
- Representations
- Transitions

!SLIDE

# DARRT Example

- NodeJS
- Express web framework
- EJS template library

!SLIDE

# DARRT: Data

- Properties
- Required fields
- Enumerables
- Default values for fields

!SLIDE

# DARRT: Actions

```js
module.exports.readStatus = function(req, res) {}
```

Turn requests into responses

Eg. look up, process data

!SLIDE

# DARRT: Resources

Map paths / endpoints to actions

('Routes' equivalent in Rails)

```js

var express = require('express')
var app = express();
var router = express.Router()

router.get('/', function(req,res){ // home
  // handler: ejs-templating-based response formatter and emitter
  handler(req,res,actions.home,"home", 
    { metadata:   metadata,
      templates: templates,
      forms:     forms,
      filter:    "home"
    }
  )
});

app.use('/', router);
```

!SLIDE

# DARRT: Representations

Format of the HTTP API responses.

Provides serialization of data to supported format, eg. JSON.

In Rails, JSON responses formatted by JBuilder view templates.

DARRT: EJS Templates

Formats supported by example DARRT app

```plaintext
text/csv
application/json
application/links+json
application/forms+json
application/prag+json
```

!SLIDE

# DARRT: Transitions

> The last item in our DARRT framework setup is the transitions.js file. This file holds a set of declarations for forms and links related to the API. An example of a link transition in HTML is the anchor tag.

I think this is more commonly known / handled as[ JSON for Linking Data, JSON-LD](https://json-ld.org/)

!SLIDE

# DARRT <=> Rails

Implementation of common web-app patterns in NodeJS

| DARRT | Rails |
| --- | --- |
| Data | Models (ActiveRecord)
| Actions | Controller actions |
| Resources | Routes |
| Representations | View templates, eg. JBuilder for JSON |
| Transitions | *none* |
