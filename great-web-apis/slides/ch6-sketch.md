# Sketch

!SLIDE

# Sketch Tools

- [Apiary Blueprint](https://apiblueprint.org/)
- HTML

!SLIDE

# Actions and Responses => Paths and JSON

`/start` =>

<pre class="code-wrapper" style="font-size: 0.4em;">
<code class="json hls">
{
   "onboardingAPI":{
      "metadata":[
         {
            "id":"title",
            "value":"BigCo, Inc. Onboarding"
         },
         {
            "id":"author",
            "value":"Mike Amundsen"
         }
      ],
      "links":[
         {
            "id":"startOnboarding",
            "href":"http://api.example.org/start",
            "method":"POST",
            "properties":[]
         },
         {
            "id":"home",
            "href":"http://api.example.org/",
            "method":"GET"
         }
      ],
      "items":[
         "..."
      ]
   }
}
</code>
</pre>

!SLIDE

# ISF dv2-api

```plaintext
/projects/
/projects/:projectId
/projects/:projectId/tags
/projects/:projectId/tags/:tagId
/projects/:projectId/measurements
/projects/:projectId/measurements/:measurementId?tag=:tag&beginDate=...
```

!SLIDE

# ISF dv2-api

`/projects` =>

```json
{
  "projects": [
    "cheesehead"
  ]
}
```

!SLIDE

# Sketches Are Disposable

- Don't have to be perfect
- Still preserved as artifacts


