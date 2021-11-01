# Prototype

!SLIDE

# Define: [OpenAPIv3](https://swagger.io/specification/)

Formerly "Swagger"

> The OpenAPI Specification (OAS) defines a standard, language-agnostic interface to RESTful APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection.

!SLIDE

# OpenAPI - Ceremony

```yaml
title: Sample Pet Store App
description: This is a sample server for a pet store.
termsOfService: http://example.com/terms/
contact:
  name: API Support
  url: http://www.example.com/support
  email: support@example.com
license:
  name: Apache 2.0
  url: https://www.apache.org/licenses/LICENSE-2.0.html
version: 1.0.1
```

!SLIDE

# OpenAPI - Business

```yaml
components:
  schemas:    # common shortcuts
  parameters: # input shortcuts
  responses:  # output shortcuts
paths: # API endpoints
  /some_path:
    get:
```

!SLIDE

# OpenAPI Paths: API endpoints

```yaml
paths:
  /some_path: # endpoint
    get: # HTTP method
      description: some_path description
      responses:
        '200': # success response code
          description: some_path success description
          content:
            application/json: # JSON response schema
```

!SLIDE

# OpenAPI Response Content

```yaml
content:
  application/json:
    schema:
      type: array
      items:
        $ref: '#/components/schemas/pet'
```

!SLIDE

# SwaggerUI

OpenAPI spec visualization app

![SwaggerUI Example](images/swaggerui-example.png)

[DV2 Rails API](https://ncar.github.io/dv2-api/api/swagger-ui/)

!SLIDE

# SwaggerHub Mocking Server

OpenAPI Spec => Mocked JSON responses

```sh
curl https://virtserver.swaggerhub.com/molecule/simple-demo/1.0.0/inventory
```

```json
[ {
  "id" : "d290f1ee-6c54-4b01-90e6-d701748f0851",
  "name" : "Widget Adapter",
  "releaseDate" : "2015-07-20T15:49:04-07:00",
  "manufacturer" : {
    "name" : "ACME Corporation",
    "homePage" : "https://www.acme-corp.com",
    "phone" : "408-867-5309"
  }
} ]
```
