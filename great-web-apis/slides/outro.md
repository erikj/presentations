# ... And Beyond!

- GraphQL
- Websockets
- Writing data: Message Queues + Background Processing?
- API-specific cloud hosting
  - AWS Lambda, Application Load Balancer, API Gateway

!SLIDE

# Utils

!SLIDE

# `python json.tool` for Human-friendly JSON

```
{"project":"LOTOS2021","profiler":"iss1","profiles":[{"snrw":11.012911796569824,"wdir"
:24.575668334960938,"wspd":1.4364817142486572,"wvert":0.004620365798473358,"height":20
0.0,"time":1634665500.0,"humanTime":"2021-10-19T17:45:00.000+00:00"}...]}
```

`curl http://... | python -mjson.tool`

```
{
    "profiler": "iss1",
    "profiles": [
        {
            "height": 200.0,
            "humanTime": "2021-10-19T17:45:00.000+00:00",
            "snrw": 11.012911796569824,
            "time": 1634665500.0,
            "wdir": 24.575668334960938,
            "wspd": 1.4364817142486572,
            "wvert": 0.004620365798473358
        },
        ...
    ]
}
```

!SLIDE

# JSON Viewer browser extension

https://github.com/tulios/json-viewer

![Chrome JSON Viewer](images/chrome-json-viewer.png)

!SLIDE

# Apache Bench: `ab`

Load testing and benchmarking

```
$ ab -n 100 -c 4 http://localhost:3000/projects

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.1      0       1
Processing:    99  345  55.1    342     483
Waiting:       98  342  54.8    338     480
Total:         99  345  55.1    342     483
```


!SLIDE

# Discussion

- Other tools & techniques for designing and building APIs?
- Web APIs developed or in consideration @ NCAR?
- Web APIs in use?
- Experience w/ OPenDAP or THREDDS?
