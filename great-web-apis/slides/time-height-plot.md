# EOL ISF `TimeHeightPlot(dv2-api)`

Visualize atmospheric sounds with windbarbs

- InfluxDB - Time-series database, sounding data
- Rails - Web API backend, dv2-api
- React.js - Page elements and interactions
- D3.js - Data visualization

!SLIDE

# [time-height-plot](http://datavis.eol.ucar.edu/time-height-plot/)

![time-height-plot screenshot](images/time-height-plot.png)

!SLIDE

# [dv2-api](https://ncar.github.io/dv2-api/api/swagger-ui/)

`/projects/LOTOS2021/profilers/iss4/date?begin_date=...&end_date=...&processing_algorithm=nima`

<pre class="code-wrapper" style="font-size: 0.4em;">
<code class="json hls">{
  "project": "LOTOS2021",
  "profiler": "iss4",
  "profiles": [
    {
      "snrw": -6.373717308044434,
      "wdir": -76.05693817138672,
      "wspd": 7.4213714599609375,
      "wvert": 0.12067867815494537,
      "height": 252.0,
      "time": 1635447622.0,
      "humanTime": "2021-10-28T19:00:22.000+00:00"
    },
    {
      "snrw": -14.623616218566895,
      "wdir": -79.0997314453125,
      "wspd": 8.26481819152832,
      "wvert": 0.02250278741121292,
      "height": 350.0,
      "time": 1635447622.0,
      "humanTime": "2021-10-28T19:00:22.000+00:00"
    }
  }
}
</code>
</pre>

!SLIDE

# Next Steps

- Profilers endpoints => Generalized measurements endpoints
- `/v1`
- ISF Catalog + NetCDF?
- Writing data?
- Python FastAPI?
